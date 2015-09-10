#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

my @numbers = ( 3, 7, 9, 99, 25 );
my @perfect_squares;

for my $number( @numbers )
{
	my $root = sqrt( $number );

	if( int( $root) != $root )
	{
		next; #skip the rest of the block
	}

	print "Found perfect square: $number\n";
	push @perfect_squares, $number;
}