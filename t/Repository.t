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

use APR::URI;
use APR::Pool ();


# most Kyentx modules require this
use Log::Log4perl qw(get_logger :levels);
Log::Log4perl->easy_init($INFO);

use Cache::Memcached;


use Kynetx::Test qw/:all/;
use Kynetx::Repository qw/:all/;
use Kynetx::JavaScript qw/:all/;
use Kynetx::Memcached qw/:all/;



my $BYU_req_info;
$BYU_req_info->{'referer'} = 'http://www.byu.edu'; # Utah (BYU)
$BYU_req_info->{'pool'} = APR::Pool->new;

my $no_referer_req_info;
$no_referer_req_info->{'pool'} = APR::Pool->new;

my %rule_env = ();


plan tests => 2;


#
# Repository tests
#

# this ought to be read from the httpd-perl.conf file
my $svn_conn = "http://krl.kobj.net/rules/client/|cs|fizzbazz";

# configure KNS
Kynetx::Configure::configure();

Kynetx::Memcached->init();


# this test relies on a ruleset being available for site 10.
SKIP: {

    # this number must reflect the number of test in this SKIP block
    my $how_many = 1;

    my $site = 'cs_test'; # the test site.  

    my $rules ;
    eval {

	$rules = Kynetx::Rules::get_rules_from_repository($site, $svn_conn);
	
    };
    skip "Can't get SVN connection on $svn_conn", $how_many if $@;

    ok(exists $rules->{'ruleset_name'});

}


# This test relies on rulesets test0 and test 1 being identical.
# To test json and krl idempotence and that get_rules_from_repository
# returns .krl or .json as needed, test0 should be .krl and test1
# .json


SKIP: {

    # this number must reflect the number of test in this SKIP block
    my $how_many = 1;


    my ($rules0, $rules1);

    my $site = 'cs_test'; # the test site.  
    eval {

	$rules0 = Kynetx::Rules::get_rules_from_repository($site, $svn_conn);

	
    };
    skip "Can't get rules from $svn_conn for $site", $how_many if $@;

    $site = 'cs_test'; # the test site.  
    eval {

	$rules1 = Kynetx::Rules::get_rules_from_repository($site, $svn_conn);
	
    };
    skip "Can't get rules from $svn_conn for $site", $how_many if $@;

    is_deeply($rules0->{'rules'}, $rules1->{'rules'});

}

1;


