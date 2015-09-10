#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

sub random_die_rolls($@)
{
	my ( $numbers_of_rolls, @numbers_of_sides ) = @_;
	my @results;

	#This foreach loop dosent work!!!
	foreach my $num_sides( @numbers_of_sides )
	{
		my $total = 0;

		
			$total   += int( 1 + rand( $num_sides) )for 1..$numbers_of_rolls;
			#print "total is $total\n";
			push @results, $total;


	}

	#only one number in the array
	#print  "results is @results\n";
	return @results;
}

my @rolls = random_die_rolls 3, 6,8, 10;
print  join (" \n", @rolls); 