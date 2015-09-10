#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

for( my $i = 0; $i < 25; $i += .25)
{
	my $amplitude = int( 40 + 35 * sin($i));

	print " " x $amplitude;
	print ".\n";
}