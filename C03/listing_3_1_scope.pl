#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

my @numbers = (1,2,3,4,5);

for my $number(@numbers)
{
	my $reciprocal = 1 / $number;

	print "The reciprocal of $number is $reciprocal\n";
}

