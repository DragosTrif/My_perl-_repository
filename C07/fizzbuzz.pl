#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

for my $number( 1.. 100 )
{

	

	if( $number % 3 == 0 )
	{
		print  " fizz";
	}
	if( $number % 5 == 0 )
	{
		print "buzz";
	}

	print "\n"
}