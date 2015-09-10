#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

sub random_die_roll
{
	my ( $number_of_sides ) = @_;
	# have a useful default if called with no arguments
 	$number_of_sides ||= 6;

 	return 1 + int( rand( $number_of_sides ));
}

my $result = random_die_roll();
print "$result\n";

my $result1 = random_die_roll(10);
print "$result1\n";