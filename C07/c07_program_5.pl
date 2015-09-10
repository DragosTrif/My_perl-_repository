#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

# this is main;
print random_die_roll(
	{
		numbers_of_sides => 6,
		numbers_of_rolls => 4,
	}
);

sub random_die_roll
{
	# this initiliaze a hashref as argument
	my ($arg_for) = @_;
	

	
 	my $numbers_of_sides = $arg_for ->{ numbers_of_sides } || 6;
 	print "this is the number of sides: $numbers_of_sides\n";


 	# have a useful default if called with no arguments
 	# this dosent works the number of rolls is a rand number;
 	my $numbers_of_rolls = $arg_for ->{ numbers_of_rolls } || 1;
 	print "this the nb of rolls: $numbers_of_rolls\n";

 	my $total = 0;

 	foreach( 1..$numbers_of_rolls )
 	{
 		$total += (1 + int(rand( $numbers_of_sides )));
 		print "total = $total\n";
 	}

 	return $total;
}

