#Write a subroutine named average() that, 
#given a list of numbers, returns the average of those
#numbers. Don’t worry about error checking.

#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;



sub average
{
	my @numbers = @_;
	my $total   = 0;

	$total     += $_ foreach @numbers;

	return $total / @numbers;
}




print average( 1, 2, 3 );	