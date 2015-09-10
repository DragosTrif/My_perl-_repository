#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

my @numbers = ( 3, 7, 9, 99, 25 );
my $first;

for my $number( @numbers )
{
	my $root = sqrt( $number );

	if( int( $root) == $root)
	{
		$first = $number;
		last;
	}	
}


if( defined $first )
	{
		print "The first perfect square in the array is $first\n";
	}
else
	{
		print "No perfect square found in array\n";
	}