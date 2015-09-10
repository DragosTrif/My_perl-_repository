#Given a list of numbers, use grep to return only the numbers that are perfect squares. Then print
#them in ascending numeric order.
 #Assume the following list of numbers:
#my @numbers = ( 28, 49, 1000, 4, 25, 49, 529 );
 #Write the grep in both BLOCK and EXPRESSION form.
#NEWLIST = grep BLOCK LIST;
#NEWLIST = grep EXPRESSION, LIST;
# What happens if one of the values in the @numbers array is actually the string Get a job,
#hippy!? How would this change your code?


#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;


my @numbers = ( 'Get a job, hippy!?', 49, 1000, 4, 25, 49, 529 );


my @square_numbers;

	@square_numbers = sort { $a <=> $b} 
		              grep { /^[0-9]+$/ && ( $_ / int sqrt($_) == int sqrt($_ ) )}  @numbers; 

	print join ',' => @square_numbers;	