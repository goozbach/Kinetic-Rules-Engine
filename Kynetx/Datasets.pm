package Kynetx::Datasets;
# file: Kynetx/Datasets.pm
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
use JSON::XS;

use Exporter;
use vars qw($VERSION @ISA @EXPORT @EXPORT_OK %EXPORT_TAGS);

use Kynetx::JavaScript qw/:all/;
use Kynetx::Memcached qw/:all/;
use Kynetx::Environments qw/:all/;

# FIXME: this ought to come out of configuration
use constant DATA_ROOT => '/web/data/client';
use constant CACHEABLE_THRESHOLD => 24*60*60; #24 hours

our $VERSION     = 1.00;
our @ISA         = qw(Exporter);

# put exported names inside the "qw"
our %EXPORT_TAGS = (all => [ 
qw(
cache_dataset_for
get_dataset
mk_dataset_js
get_datasource
global_dataset
) ]);

our @EXPORT_OK   =(@{ $EXPORT_TAGS{'all'} }) ;


  # 'datasets' => [
  #   {
  #     'source' => 'aaa.json',
  #     'name' => 'aaa',
  #     'cachable' => 0
  #   },
  #   {
  #     'source' => 'aarp.json',
  #     'name' => 'aarp',
  #     'cachable' => 0
  #   },
  #   {
  #     'source' => 'http://www.foo.com/data.json',
  #     'name' => 'fizz_data',
  #     'cachable' => 1
  #   },
  #   {
  #     'source' => 'http://www.foo.com/data.json',
  #     'name' => 'foo_data',
  #     'cachable' => {
  #       'period' => 'minutes',
  #       'value' => '20'
  #     }
  #   }
  # ],

sub get_dataset {
    my ($dataset, $req_info) = @_;

    my  ($perl_data, $json_data); 

    my $logger = get_logger();

    my $name = $dataset->{'name'};
    my $source_name = $dataset->{'source'};

    # for now, if it's not an HTTP url, assume it's a file.
    my $type = ($source_name =~ m#^http://#) ? "url" : "file";
    $logger->debug("retrieving dataset $name as $type");
    
    my $cache_for = cache_dataset_for($dataset);

    my $source;
    if($type eq 'file') {
	$source_name = join("/", (DATA_ROOT, $req_info->{'rid'}, $source_name));
	$logger->debug("retrieving file dataset from $source_name");
	$source = get_cached_file($source_name); # no expiration on 
    } else {
	$logger->debug("retrieving network dataset from $source_name");
	$source = get_remote_data($source_name, $cache_for);
    }

    return $source

}

sub cache_dataset_for {
    my ($d) = @_;
    my $logger = get_logger();

    my $cache_for = 10 * 60; # 10 minutes is minimum

    my $name = $d->{'name'};

    if($d->{'cachable'}) {
	$cache_for = CACHEABLE_THRESHOLD;  # in seconds, default to one day
    } 

    if (ref $d->{'cachable'} eq 'HASH') { 
	$cache_for = $d->{'cachable'}->{'value'};  
	if($d->{'cachable'}->{'period'} eq 'years') {
	    $cache_for = $cache_for * 60 * 60 * 24 * 365;
	} elsif($d->{'cachable'}->{'period'} eq 'months') {
	    $cache_for = $cache_for * 60 * 60 * 24 * 30;
	} elsif($d->{'cachable'}->{'period'} eq 'weeks') {
	    $cache_for = $cache_for * 60 * 60 * 24 * 7;
	} elsif($d->{'cachable'}->{'period'} eq 'days') {
	    $cache_for = $cache_for * 60 * 60 * 24;
	} elsif($d->{'cachable'}->{'period'} eq 'hours') {
	    $cache_for = $cache_for * 60 * 60;
	} elsif($d->{'cachable'}->{'period'} eq 'minutes') {
	    $cache_for = $cache_for * 60;
	} elsif($d->{'cachable'}->{'period'} eq 'seconds') {
	    $cache_for = $cache_for;
	} 
   } 

    $logger->debug("caching dataset $name for $cache_for seconds");
    return $cache_for;

}

sub global_dataset {
    my ($d) = @_;
    # global data sets are those that are cachable for more than the CACHEABLE_THRESHOLD
    return cache_dataset_for($d) >= CACHEABLE_THRESHOLD;
}


sub mk_dataset_js {
    my ($g, $req_info, $rule_env) = @_;
    my $logger = get_logger();
    
    my $source = get_dataset($g, $req_info);
    
    my $js = "KOBJ['data']['" . $g->{'name'} . "'] = ";
    my $source_json;
    my $pval;
    eval { $source_json = decode_json($source); };
    if ($@) {
	$logger->debug("seeing " . $g->{'name'} . " as string ", $@);
	$js .= Kynetx::JavaScript::mk_js_str($source);
	$pval = $source;
    } else { 
	$logger->debug("seeing " . $g->{'name'} . " as JSON ", $@);
	$js .= $source;
	$pval = $source_json;
    }
    $js .= ";\n";

    return ($js, $g->{'name'}, $pval);

}

sub get_datasource {
    my ($rule_env,$args,$function) = @_; 

    my  ($perl_data, $json_data); 

    my $logger = get_logger();

    # for now, if it's not an HTTP url, assume it's a file.
    $logger->debug("retrieving datasource");
    my $ds = lookup_rule_env('datasource:'.$function, $rule_env);

#    $logger->debug(Dumper($ds));

    my $cache_for = cache_dataset_for($ds);

    my $source_name = lookup_rule_env('datasource:'.$function,$rule_env)->{'source'};

    if(ref $args->[0] eq 'HASH') {

	if($source_name =~ m/\?/) {
	    $source_name .= '&'; # make it safe to add more params
	} else {
	    $source_name .= '?'; # add ? if not there already
	}

	my @params;
	for my $k (keys %{ $args->[0] }) {
	    push(@params, $k."=".$args->[0]->{$k});
	}

	$source_name .= join("&",(sort @params)); # add params; sort to maximize cachability

    } else {
	$source_name .= $args->[0];
    }


    my $source;
    $logger->debug("retrieving network datasource from $source_name");
    $source = get_remote_data($source_name, $cache_for);

    my($source_json, $result);
    eval { $source_json = decode_json($source); };
    if ($@) {
	$logger->debug("seeing $function as string ", $@);
	$source =~ y/\n\r/  /; # remove newlines
	$result = $source;
    } else { 
	$logger->debug("seeing $function as JSON ", $@);
	$result = $source_json;
    }

    return $result;

}

1;
