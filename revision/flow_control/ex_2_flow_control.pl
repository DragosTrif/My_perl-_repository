#Write a program that prompts the user for a word, then prints it 5 times on one line.
#The program should then ask the user for another word, which it prints 5 times again.
#Keep looping until the user enters the word `quit`(don't worry if 'quit' is also printed).
#Hint: after reading from the keyboard, don’t forget to chomp.

#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

my $word = undef;


while( $word ne 'quit')
{
	print "Give me a word\n";

	chomp ($word = <>);

	print "$word\n" x 5;
} 

	
	
	

	
