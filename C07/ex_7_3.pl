#Write a subroutine called make_multiplier() that takes a number and returns an anonymous
#subroutine. The returned anonymous subroutine can accept a number and return that number
#multiplied by the fi rst number. Use your code to make the following print yes, twice.
#Hint: Use a closure.
#my $times_seven = make_multiplier(7);
#my $times_five = make_multiplier(5);
#print 21 == $times_seven->(3) ? “yes\n” : “no\n”;
#print 20 == $times_five->(4) ? “yes\n” : “no\n”;

#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;


sub make_multiplier
{
	my ( $number ) = @_;


	return sub 
	{
		my ( $second_number ) = @_;
		
		
		my $total= $number * $second_number;

		return $total;
	}
} 


my $times_seven = make_multiplier(7);
print 21 == $times_seven->(3) ? "yes\n" : "no\n";

my $times_five = make_multiplier(5);
print 20 == $times_five->(4) ? "yes\n" : "no\n"; 


