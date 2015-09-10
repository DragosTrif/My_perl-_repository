#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

sub random_die_roll
{
	my ( $number_of_sides, $number_of_rolls ) = @_;

	# have a useful default if called with no arguments
 	$number_of_sides ||= 6;

 	# have a useful default if called with no arguments
 	$number_of_rolls ||= 1;

 	my $total = 0;

 	foreach( 1..$number_of_rolls )
 	{
 		$total += 1+ int( rand( $number_of_sides ));
 	}

 	return $total;
}

my $result = random_die_roll(6,3);

print $result;