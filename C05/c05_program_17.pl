#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

my @array = ( 1 .. 5 );
print "$_\n" foreach @array;

my $countdown = 10;
print "$countdown", while ( $countdown-- ); 
	
