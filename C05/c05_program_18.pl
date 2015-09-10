#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

my $factorial = 1;
my $counter   = 1;

do
{
	$factorial *= $counter++;
}
while( $counter <= 5 );

print $factorial;