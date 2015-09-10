#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

sub F
{
	my $n = shift;
	return 0 if $n == 0;
	return 1 if $n == 1;
	return F( $n - 1 ) + F( $n - 2 );
}

print F(-1);