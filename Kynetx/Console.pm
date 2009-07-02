package Kynetx::Console;
# file: Kynetx/Console.pm
#
# Copyright 2007-2009, Kynetx Inc.  All rights reserved.
# 
# This Software is an unpublished, proprietary work of Kynetx Inc.
# Your access to it does not grant you any rights, including, but not
# limited to, the right to install, execute, copy, transcribe, reverse
# engineer, or transmit it by any means.  Use of this Software is
# governed by the terms of a Software License Agreement transmitted
# separately.
# 
# Any reproduction, redistribution, or reverse engineering of the
# Software not in accordance with the License Agreement is expressly
# prohibited by law, and may result in severe civil and criminal
# penalties. Violators will be prosecuted to the maximum extent
# possible.
# 
# Without limiting the foregoing, copying or reproduction of the
# Software to any other server or location for further reproduction or
# redistribution is expressly prohibited, unless such reproduction or
# redistribution is expressly permitted by the License Agreement
# accompanying this Software.
# 
# The Software is warranted, if at all, only according to the terms of
# the License Agreement. Except as warranted in the License Agreement,
# Kynetx Inc. hereby disclaims all warranties and conditions
# with regard to the software, including all warranties and conditions
# of merchantability, whether express, implied or statutory, fitness
# for a particular purpose, title and non-infringement.
# 
use strict;
use warnings;

use Log::Log4perl qw(get_logger :levels);
use HTML::Template;
use DateTime;
use Data::Dumper;
$Data::Dumper::Indent = 1;



use Kynetx::Session qw(:all);
use Kynetx::Request qw(:all);
use Kynetx::Rules qw(:all);
use Kynetx::Predicates qw(:all);
use Kynetx::Predicates::Location qw(:all);
use Kynetx::Predicates::Time qw(:all);
use Kynetx::Predicates::Weather qw(:all);
use Kynetx::Predicates::Demographics qw(:all);


use Exporter;
use vars qw($VERSION @ISA @EXPORT @EXPORT_OK %EXPORT_TAGS);

our $VERSION     = 1.00;
our @ISA         = qw(Exporter);

# put exported names inside the "qw"
our %EXPORT_TAGS = (all => [ 
qw(
show_context
) ]);
our @EXPORT_OK   =(@{ $EXPORT_TAGS{'all'} }) ;

# FIXME: get this from config
use constant DEFAULT_TEMPLATE_DIR => '/web/lib/perl/etc/tmpl';


sub show_context {
    my ($r, $method, $rid) = @_;

    my $logger = get_logger();


    if($r->dir_config('run_mode') eq 'development') {
	# WARNING: THIS CHANGES THE USER'S IP NUMBER FOR TESTING!!
#        $r->connection->remote_ip('128.122.108.71'); # New York (NYU)
	$r->connection->remote_ip('72.21.203.1'); # Seattle (Amazon)
#        $r->connection->remote_ip('128.187.16.242'); # Utah (BYU)
    }


    # get a session hash 
    my $session = process_session($r);

    my $request_info = Kynetx::Request::build_request_env($r, $method, $rid);


    Kynetx::Request::log_request_env($logger, $request_info);


    $logger->info("Displaying context data for site " . $request_info->{'site'});

    # side effects environment with precondition pattern values
    my ($rules, $rule_env, $ruleset) = 
	get_rule_set($r->dir_config('svn_conn'),
		     $request_info);

    # this loops through the rules ONCE applying all that fire
    my %fired;
    foreach my $rule ( @{ $rules } ) {
	my $pred_value = 
	    eval_predicates($request_info, $rule_env, $session, 
			    $rule->{'cond'}, $rule->{'name'});

	if ($pred_value) {
	    $fired{$rule->{'name'}} = 'will fire';
	} else {
	    $fired{$rule->{'name'}} = 'will not fire';
	}

    }

    if($logger->is_debug()) {
	foreach my $entry (keys %{ $request_info}) {
	    $logger->debug($entry . ": " . $request_info->{$entry});
	}
    }


    # print template
    $logger->debug("printing template");

    my $template = DEFAULT_TEMPLATE_DIR . "/show_context.tmpl";
    my $context_template = HTML::Template->new(filename => $template,
					       die_on_bad_params => 0);

    $context_template->param(site => $request_info->{'site'});
    $context_template->param(caller => $request_info->{'caller'});

    my @client_info = (       
	{ name => 'Kynetx CS Server',
	  value => $request_info->{'hostname'}},

	{ name => 'Client ID', 
	  value => $request_info->{'site'}},

	{ name => 'Client calling page',
	  value => $request_info->{'caller'}},

	);


    $context_template->param(client_info => \@client_info);

    my $demo_preds = Kynetx::Predicates::Demographics::get_predicates();

    my @user_info = (       

	{ name => 'User IP Address',
	  value => $request_info->{'ip'}},

	{ name => 'City',
	  value => get_geoip($request_info,'city')},
	{ name => 'Region',
	  value => get_geoip($request_info,'region')},
	{ name => 'Zip Code',
	  value => get_geoip($request_info,'postal_code')},
	{ name => 'Country',
	  value => get_geoip($request_info,'country_name')},

	{ name => 'Local time',
	  value => get_local_time($request_info)},
	{ name => 'Local time zone',
	  value => get_local_time($request_info)->time_zone->name},


	{ name => 'Current temperature',
	  value => get_weather($request_info,'curr_temp') . ' F'},
	{ name => 'Current conditions',
	  value => get_weather($request_info,'curr_cond') . ' '},
	{ name => 'Tomorrow high',
	  value => get_weather($request_info,'tomorrow_high') . ' F'},
	{ name => 'Tomorrow low',
	  value => get_weather($request_info,'tomorrow_low') . ' F'},
	{ name => 'Tomorrow forecast',
	  value => get_weather($request_info,'tomorrow_cond') . ' '},


	{ name => 'Median income',
	  value => '$'.get_demographics($request_info, 'median_income')},
	{ name => 'Urban',
	  value => &{$demo_preds->{'urban'}}($request_info) ? 'yes' : 'no'},
	{ name => 'Rural',
	  value => &{$demo_preds->{'rural'}}($request_info) ? 'yes' : 'no'},

	);

    $context_template->param(user_info => \@user_info);

    my @rule_info =  (
	{ name => 'Rule Version', 
	  value => $request_info->{'rule_version'}},

	{ name => 'Active rules', 
	  value => $request_info->{'rule_count'}},

	);


    $context_template->param(rule_info => \@rule_info);

    my $c = 0;
    my @rules = ();
    foreach my $rule_name (@{ $request_info->{'selected_rules'} }) {
	push @rules, 
   	     { number => $c,
	       name => $rule_name,
	       fired => $fired{$rule_name},
	     };
	$c++;
    }


    $context_template->param(rules => \@rules);


    $r->content_type('text/html');
    print $context_template->output;


    $logger->info("finished");


}


1;
