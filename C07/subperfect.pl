#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

my @array_of_numbers = (10..20);
my @array_of_even_numbers = grep { $_ % 2 == 0 }@array_of_numbers;
my @array;

print " @array_of_even_numbers";

my $count = 2;

for( $count.. 20 )#$#@array_of_even_numbers)
{
	 @array = $#@array_of_even_numbers / $count;
	
}


print @array;

