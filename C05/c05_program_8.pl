#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

my @array = (0..12);

for( my $i = 0; $i < @array; ++$i)
{
	print "$i: $array[$i]\n";
}
#more cleaner 

for my $j(0..$#array)
{
	print "$j: $array[$j]\n";
}