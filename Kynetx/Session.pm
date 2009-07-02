package Kynetx::Session;
# file: Kynetx/Session.pm
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


# use kns_config qw(get_config);

use Log::Log4perl qw(get_logger :levels);

use Kynetx::Configure qw(:all);

use Exporter;
use vars qw($VERSION @ISA @EXPORT @EXPORT_OK %EXPORT_TAGS);

our $VERSION     = 1.00;
our @ISA         = qw(Exporter);

# put exported names inside the "qw"
our %EXPORT_TAGS = (all => [ 
qw(
process_session
) ]);
our @EXPORT_OK   =(@{ $EXPORT_TAGS{'all'} }) ;


sub process_session {
    my ($r) = @_;

    my $logger = get_logger();

    my $cookie = $r->headers_in->{'Cookie'};
    $cookie =~ s/SESSION_ID=(\w*)/$1/ if(defined $cookie);

    if (defined $cookie) {
	$logger->debug("Using session id: ", $cookie );
    } else {
	$logger->debug("No session id found" );
    }

    my $session;

    eval {
	$session = tie_servers($session,$cookie);
    };

    # catch an error ($cookie not found is the most usual)
    if ($@) {
	undef $cookie; # creates a new session
	$logger->debug("Create cookie...");
	$session = tie_servers($session,$cookie);
    }

    # might be a new session, so lets give them their cookie back
    my $session_cookie = 
	"SESSION_ID=$session->{_session_id};path=/;domain=" .
	Kynetx::Configure::get_config('COOKIE_DOMAIN') .
	';expires=Mon, 31-Dec-2011 00:00:00 GMT';
    $logger->debug("Sending cookie: ", $session_cookie);
    $r->headers_out->add('Set-Cookie' => $session_cookie);

    return $session;

}


sub tie_servers {

    my($session,$cookie) = @_;

    # presumes memcached has already been initialized
#    my $mem_servers = Kynetx::Memcached::get_memcached_servers();
    my $mem_servers = Kynetx::Configure::get_config('SESSION_SERVERS');

    my $logger = get_logger();
    $logger->debug("Using ", $mem_servers, " for session storage");


    tie %{$session}, 'Apache::Session::Memcached', $cookie, {
	Servers => $mem_servers,
	NoRehash => 1,
	Readonly => 0,
	Debug => 0,
	CompressThreshold => 10_000
    };

    return $session;

}

1;
