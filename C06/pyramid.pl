#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use Data::Dumper;

my @array = ('compute', 'computer', 'jest');
my $auxiliar;
my $string_end ;
my @stems;
my $counter;

foreach my $iter(0..$#array)
{
	$string_end = 7;
	$counter++;
	#print "the array is @array\n";
	
	
	while( $string_end > 2 )
	{
		$string_end-- ;
		
		
		$auxiliar = substr $array[ $iter ], 0, $string_end;
	 	push @stems, $auxiliar; 

	}
}	

print Dumper(@stems);
print "the array is @array\n";