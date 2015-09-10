#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use Data::Dumper;

my @array = ('compute', 'computer', 'jest', 'test', 'tester', 
	'literate', 'literal', 'continue', 'colaborate');
my $auxiliar;
my $string_end ;
my @stems;
my %count;
my $max = 0;

foreach my $iter(0..$#array)
{
	$string_end = 7;
	
	#print "the array is @array\n";
	
	
	while( $string_end > 2 )
	{
		$string_end-- ;
		
		
		$auxiliar = substr $array[ $iter ], 0, $string_end;
	 	push @stems, $auxiliar; 

	}
}

my $common_steam;

foreach my $element( @stems )
{
	++$count{ $element };
	#print $element#;
	#print "$count{$element}\n";

	if( $max < $count{ $element } )
	{
		$max = $count{ $element };
		
	}
}

my @flat_array = %count;


my %new_hash = reverse @flat_array;

#print "The most common  and it appears $max times";

print "the count hash is", Dumper(\%count),"\n";

print "the ne hash is\n", Dumper( \%new_hash ), "\n";




print Dumper(\@stems);
#print "the array is @array\n";