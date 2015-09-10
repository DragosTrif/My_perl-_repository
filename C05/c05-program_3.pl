#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

my @numbers = (1..10);

for my $count(@numbers)
{
	print "$count\n";
}

foreach my $count2(@numbers)
{
	print "$count2\n";
}