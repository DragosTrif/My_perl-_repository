#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

my @results = (
	[ 12, 9, 4       ],
	[ 454, 2, 42     ],
	[   6, 9, 13, 44 ],
);

my $aref1 = $results[0];
my $aref2 = $results[1];
my $aref3 = $results[2];

my $number = $aref2 -> [2];
print "$number\n";

#direct acces
my $number2 = $results[1] -> [2];
print "$number\n";

my $aref_results = \@results;

foreach my $count( @$aref_results[0..2] )
{
	print "$count\n";
}