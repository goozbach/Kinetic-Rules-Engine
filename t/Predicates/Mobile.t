#!/usr/bin/perl -w 
#
# This file is part of the Kinetic Rules Engine (KRE)
# Copyright (C) 2007-2011 Kynetx, Inc. 
#
# KRE is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License as
# published by the Free Software Foundation; either version 2 of
# the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be
# useful, but WITHOUT ANY WARRANTY; without even the implied
# warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
# PURPOSE.  See the GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public
# License along with this program; if not, write to the Free
# Software Foundation, Inc., 59 Temple Place, Suite 330, Boston,
# MA 02111-1307 USA
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
use Kynetx::Predicates::Mobile qw/:all/;

my $preds = Kynetx::Predicates::Mobile::get_predicates();

my @pnames = keys (%{ $preds } );

# Note: BYU zip not defined in demographics DB
my $BYU_req_info;
$BYU_req_info->{'ip'} = '128.187.16.242'; # Utah (BYU)



my %rule_env;



my @ua_strings = (
    'BlackBerry8830/4.2.2 Profile/MIDP-2.0 Configuration/CLOC-1.1 VendorID/105',
    'Nokia6600/1.0 (4.09.1) SymbianOS/7.0s Series60/2.0 Profile/MIDP-2.0 Configuration/CLDC-1.0',
    'Mozilla/5.0 (iPhone; U; CPU like Mac OS X; en) AppleWebKit/420.1 (KHTML, like Gecko) Version/3.0 Mobile/3B48b Safari/419.3',
    'BlackBerry8820/4.2.2 Profile/MIDP-2.0 Configuration/CLDC-1.1 VendorID/102',
    'BlackBerry8703e/4.1.0 Profile/MIDP-2.0 Configuration/CLDC-1.1 VendorID/105',
    'BlackBerry8320/4.3.1 Profile/MIDP-2.0 Configuration/CLDC-1.1',
    'Mozilla/4.0 (compatible; MSIE 4.01; Windows CE; PPC; 240x320; HP iPAQ h6300)',
    'Mozilla/4.0 (compatible; MSIE 6.0; Windows CE; IEMobile 7.11)',
    'HTCP3300-Mozilla/4.0 (compatible; MSIE 4.01; Windows CE; PPC; 240x320)',
    'LG-LX550 AU-MIC-LX550/2.0 MMP/2.0 Profile/MIDP-2.0 Configuration/CLDC-1.1',
    'MOT-V3i/08.B4.34R MIB/2.2.1 Profile/MIDP-2.0',
    'Opera/8.0.1 (J2ME/MIDP; Opera Mini/3.1.9427/1724; en; U; ssr)',
    'Nokia3510i/1.0 (04.44) Profile/MIDP-1.0 Configuration/CLDC-1.0',
    'Mozilla/4.1 (compatible; MSIE 5.0; Symbian OS; Nokia 6600;452) Opera 6.20 [en-US]',
    'Mozilla/4.0 (compatible; MSIE 5.0; Series80/2.0 Nokia9300/05.22 Profile/MIDP-2.0 Configuration/CLDC-1.1)',
    'Mozilla/4.0 (compatible; MSIE 4.01; Windows CE; O2 Xda 2mini; PPC; 240x320)',
    'Mozilla/4.0 (compatible; MSIE 4.01; Windows CE; Smartphone; 176x220; SPV C500; OpVer 4.1.3.0)',
    'Palm680/RC1 Mozilla/4.0 (compatible; MSIE 6.0; Windows 98; PalmSource/Palm-D053; Blazer/4.5) 16;320x320 UP.Link/6.3.1.17.06.3.1.17.0',
    'Mozilla/4.0(compatible; MSIE 4.01; Windows CE; PPC; 240x320)',
    'SonyEricssonK608i/R2L/SN356841000828910 Browser/SEMC-Browser/4.2 Profile/MIDP-2.0 Configuration/CLDC-1.1',

    );

plan tests => int(@ua_strings) + int(@pnames);

# check that predicates at least run without error
my @dummy_arg = (0);
$BYU_req_info->{'ua'} = $ua_strings[0];  # any one will work here
foreach my $pn (@pnames) {
    ok(&{$preds->{$pn}}($BYU_req_info, \%rule_env,\@dummy_arg) ? 1 : 1, "$pn runs");
}


my $req_info;
foreach my $ua (@ua_strings) {
    $req_info->{'ua'} = $ua;
    ok(&{$preds->{'mobile'}}
       ($req_info, \%rule_env, \@dummy_arg), 
       "Checking $ua");
}



1;


