package Kynetx::Operators;
# file: Kynetx/Operators.pm
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
use Data::Dumper;

use Kynetx::JavaScript q/eval_js_expr/;
use Kynetx::JSONPath ;

use Exporter;
use vars qw($VERSION @ISA @EXPORT @EXPORT_OK %EXPORT_TAGS);

our $VERSION     = 1.00;
our @ISA         = qw(Exporter);

# put exported names inside the "qw"
our %EXPORT_TAGS = (all => [ 
qw(
eval_pick
eval_length
eval_operator
) ]);
our @EXPORT_OK   =(@{ $EXPORT_TAGS{'all'} }) ;

my $funcs = {};

sub eval_pick {
    my ($expr, $rule_env, $rule_name, $req_info, $session) = @_;
    my $logger = get_logger();

    my $obj = Kynetx::JavaScript::eval_js_expr($expr->{'obj'}, $rule_env, $rule_name,$req_info, $session);
#    $logger->debug("obj: ", sub { Dumper($obj) });
    
    my $rands = Kynetx::JavaScript::eval_js_rands($expr->{'args'}, $rule_env, $rule_name,$req_info, $session);
#    $logger->debug("obj: ", sub { Dumper($rands) });

    my $pattern = '';
    if($rands->[0]->{'type'} eq 'str') {
	$pattern = $rands->[0]->{'val'}
    } else {
	$logger->warn("WARNING: pattern argument to pick not a string");
    }

    my $jp = Kynetx::JSONPath->new();
    my $v = $jp->run($obj->{'val'}, $pattern);

    $v = $v->[0] if(defined $v && scalar @{ $v } == 1);

    $logger->debug("pick using $pattern returning ", $v);

    return  { 'type' => Kynetx::JavaScript::infer_type($v),
	      'val' => $v
    };
}
$funcs->{'pick'} = \&eval_pick;


sub eval_length {
    my ($expr, $rule_env, $rule_name, $req_info, $session) = @_;
    my $logger = get_logger();
    my $obj = Kynetx::JavaScript::eval_js_expr($expr->{'obj'}, $rule_env, $rule_name,$req_info, $session);

#    $logger->debug("obj: ", sub { Dumper($obj) });

    my $v = 0;
    if ($obj->{'type'} eq 'array') {
	$v = @{ $obj->{'val'} } + 0;
    }

    return { 'type' => Kynetx::JavaScript::infer_type($v),
	      'val' => $v
    }
}
$funcs->{'length'} = \&eval_length;

sub eval_replace {
    my ($expr, $rule_env, $rule_name, $req_info, $session) = @_;
    my $logger = get_logger();
    my $obj = Kynetx::JavaScript::eval_js_expr($expr->{'obj'}, $rule_env, $rule_name,$req_info, $session);

#    $logger->debug("obj: ", sub { Dumper($obj) });

    my $rands = Kynetx::JavaScript::eval_js_rands($expr->{'args'}, $rule_env, $rule_name,$req_info, $session);
    $logger->debug("obj: ", sub { Dumper($rands) });

    my $v = $obj->{'val'};

    if($obj->{'type'} eq 'str' && 
       $rands->[0]->{'type'} eq 'regexp' && 
       $rands->[1]->{'type'} eq 'str') {
    
	my $pattern = '';
	($pattern) = $rands->[0]->{'val'} =~ m#/(.+)/(i|g){0,2}#;  

	$logger->debug("Replacing string with $pattern ");

	# get capture vars first
	my @items = ( $v =~ $pattern ); 

	# yeah, this is really ugly...
	if($rands->[0]->{'val'} =~ m#/i$#) {
	    $v =~ s/$pattern/$rands->[1]->{'val'}/i;
	} elsif($rands->[0]->{'val'} =~ m#/g$#) {
	    $v =~ s/$pattern/$rands->[1]->{'val'}/g;
	} elsif($rands->[0]->{'val'} =~ m#/gi$#) {
	    $v =~ s/$pattern/$rands->[1]->{'val'}/gi;
	} elsif($rands->[0]->{'val'} =~ m#/ig$#) {
	    $v =~ s/$pattern/$rands->[1]->{'val'}/ig;
	} else {
	    $v =~ s/$pattern/$rands->[1]->{'val'}/;
	}

	# now put capture vars in (this avoids evaling the replacement)
	for( reverse 0 .. $#items ){ 
	    my $n = $_ + 1; 
	    #  Many More Rules can go here, ie: \g matchers  and \{ } 
	    $v =~ s/\\$n/${items[$_]}/g ;
	    $v =~ s/\$$n/${items[$_]}/g ;
	}
    }


    return { 'type' => Kynetx::JavaScript::infer_type($v),
	      'val' => $v
    }
}
$funcs->{'replace'} = \&eval_replace;


sub eval_operator {
    my ($expr, $rule_env, $rule_name, $req_info, $session) = @_;
    my $logger = get_logger();
    $logger->debug("eval_operator evaluation with op -> ", $expr->{'name'});
    my $f = $funcs->{$expr->{'name'}};
    return &$f($expr, $rule_env, $rule_name, $req_info, $session);
}

1;