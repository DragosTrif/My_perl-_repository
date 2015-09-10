#Write a Perl program that emulates the high-street bank mechanism for checking a
#PIN. Keep taking input from the keyboard (<STDIN>) until it is identical to a
#password number (hard-coded by you in the program).
#Restrict the number of attempts to 3 (be sure to use a variable for that, we may wish
#to change it later), and output a suitable message for success and failure. Be sure to
#include the number of attempts in the message.
#Just to keep things interesting, give the PIN a leading zero.

#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

my $pin_check = '0123';
my $prompter;


foreach( 0..3 )
{
	print "Give ur pin pls\n";
	$prompter = <>;
	chomp $prompter;

	if( $prompter eq $pin_check )
	{
		
		last;
	}

	if( $prompter ne $pin_check)
	{
		print "Ups \n"
	}
	else
	{
		print "Well done, you remembered it!\n";
	}
}



 
