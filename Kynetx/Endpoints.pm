package Kynetx::Endpoints;
# file: Kynetx/Endpoints.pm
# file: Kynetx/Predicates/Referers.pm
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
use strict;
#use warnings;
use lib qw(/web/lib/perl);

use Log::Log4perl qw(get_logger :levels);

use Kynetx::Util qw(:all);
use Kynetx::Session qw(:all);
use Kynetx::Memcached qw(:all);
use Kynetx::Version qw(:all);
use Kynetx::Configure qw(:all);
use Kynetx::Request;
use Kynetx::Rules;
use Kynetx::Actions;
use Kynetx::Json;
use Kynetx::Predicates::Amazon::SNS::Response qw(:all);
use Kynetx::Endpoints::KNS qw(:all);

use Data::Dumper;
$Data::Dumper::Indent = 1;


use Exporter;
use vars qw($VERSION @ISA @EXPORT @EXPORT_OK %EXPORT_TAGS);

our $VERSION     = 1.00;
our @ISA         = qw(Exporter);

# put exported names inside the "qw"
our %EXPORT_TAGS = (all => [
qw(

) ]);
our @EXPORT_OK   =(@{ $EXPORT_TAGS{'all'} }) ;

sub handler {
    my $r = shift;

    # configure logging for production, development, etc.
    Kynetx::Util::config_logging($r);

    my $logger = get_logger();

    $r->content_type('text/javascript');


    $logger->debug("------------------------------ begin endpoint evaluation -----------------------------");
    $logger->debug("Initializing memcached");
    Kynetx::Memcached->init();

    my ($endpoint,$medium,$rid);
    my $ken = '';

    ($endpoint,$medium,$rid,$ken) = $r->path_info =~ m!/([a-z+_]+)/?([a-z+_]+)?/?([A-Za-z0-9_;]*)/?([A-Z0-9-]*)?/?!;


 # Set to be the same now one.  This will pass back the rid to the runtime
    #$eid = $rid;
    $logger->debug("processing directive for $endpoint/$medium on rulesets $rid and KEN $ken");

    Log::Log4perl::MDC->put('site', $rid);
    Log::Log4perl::MDC->put('rule', '[global]');  # no rule for now...

    # store these for later logging
    $r->subprocess_env(ENDPOINT => $endpoint);
    $r->subprocess_env(MEDIUM => $medium);
    $r->subprocess_env(RIDS => $rid);

    # at some point we need a better dispatch function
    if($endpoint eq 'kns' ) {
      $logger->debug("kns endpoint");
      Kynetx::Endpoints::KNS::eval_kns($r,$endpoint,$medium,$rid);

    } else {
        $logger->debug("undefined endpoint");
        Kynetx::Util::request_dump($r);
    }

    return Apache2::Const::OK;
}



1;
