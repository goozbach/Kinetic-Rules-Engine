#!/usr/bin/perl -w 

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
use lib qw(/web/lib/perl);
use strict;

use Test::More;
use Test::LongString;

# most Kyentx modules require this
use Log::Log4perl qw(get_logger :levels);
Log::Log4perl->easy_init($INFO);
#Log::Log4perl->easy_init($DEBUG);

use Kynetx::Test qw/:all/;
use Kynetx::Parser qw/:all/;
use Kynetx::Predicates::Location qw/:all/;
use Kynetx::JavaScript qw/:all/;

use Data::Dumper;
$Data::Dumper::Indent = 1;


my $preds = Kynetx::Predicates::Location::get_predicates();
my @pnames = keys (%{ $preds } );

plan tests => 13 + int(@pnames);


my $NYU_req_info;
$NYU_req_info->{'ip'} = '128.122.108.71'; # New York (NYU)

my $Amazon_req_info;
$Amazon_req_info->{'ip'} = '72.21.203.1'; # Seattle (Amazon)

my $BYU_req_info;
$BYU_req_info->{'ip'} = '128.187.16.242'; # Utah (BYU)

my $BBC_req_info;
$BBC_req_info->{'ip'} = '212.58.251.195'; # BBC, Surrey, Tadworth

my %rule_env = ();

# check that predicates at least run without error
my @dummy_arg = (0);
foreach my $pn (@pnames) {
    ok(&{$preds->{$pn}}($BYU_req_info, \%rule_env,\@dummy_arg) ? 1 : 1, "$pn runs");
}

my @args;

@args = ('Provo');
ok(&{$preds->{'city'}}($BYU_req_info, \%rule_env, \@args),
   "Is BYU in Provo?");

@args = (get_geoip($BYU_req_info,'city'));
ok(&{$preds->{'city'}}($BYU_req_info, \%rule_env, \@args),
   "Is the city we return the one in the predicate");

@args = (get_geoip($BYU_req_info,'state'));
ok(&{$preds->{'state'}}($BYU_req_info, \%rule_env, \@args),
   "Is the state we return the one in the predicate");

@args = (get_geoip($BYU_req_info,'region'));
ok(&{$preds->{'state'}}($BYU_req_info, \%rule_env, \@args),
   "Is the state we return the one in the predicate");

@args = (get_geoip($BYU_req_info,'city'));
ok(! &{$preds->{'outside_city'}}($BYU_req_info, \%rule_env, \@args),
   "city return and outside_city");

@args = (get_geoip($BYU_req_info,'state'));
ok(! &{$preds->{'outside_state'}}($BYU_req_info, \%rule_env, \@args),
   "state return and outside_state");


ok(! &{$preds->{'international'}}($BYU_req_info, \%rule_env, \@args),
   "BYU isn't international");

ok( &{$preds->{'international'}}($BBC_req_info, \%rule_env, \@args),
   "BBC is international");

@args = (get_geoip($BYU_req_info,'country_code'));
ok(&{$preds->{'country'}}($BYU_req_info, \%rule_env, \@args),
   "BYU is in the country it's in");

@args = (get_geoip($BBC_req_info,'country_code'));
ok(&{$preds->{'country'}}($BBC_req_info, \%rule_env, \@args),
   "BBC is in the country it's in");

@args = (get_geoip($BBC_req_info,'country_code'));
ok(&{$preds->{'outside_country'}}($BYU_req_info, \%rule_env, \@args),
   "BYU and BBC are in different countries");


my($krl_src,$cond,$args);

$krl_src = <<_KRL_;
country("US")
_KRL_

$cond = Kynetx::Parser::parse_predexpr($krl_src);

$args = Kynetx::JavaScript::gen_js_rands($cond->{'args'});

#diag(Dumper($args));


ok(&{$preds->{'country'}}($BYU_req_info, \%rule_env, $args),
   "BYU is in the US");

$krl_src = <<_KRL_;
country("GB")
_KRL_

$cond = Kynetx::Parser::parse_predexpr($krl_src);

$args = Kynetx::JavaScript::gen_js_rands($cond->{'args'});



ok(&{$preds->{'country'}}($BBC_req_info, \%rule_env, $args),
   "BBC is in GB");


1;


