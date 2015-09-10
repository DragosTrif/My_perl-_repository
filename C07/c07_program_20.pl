#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use Try::Tiny;

sub reciprocal { return 1/shift }

for my $number(0..5 )
{
	my $reciprocal;

	try
	{
		$reciprocal = reciprocal( $number );
		print "The reciprocal of $number is $reciprocal\n";

	}
	catch
	{
		my $error = $_;
		print "Could not calculate the reciprocal of $_: $error\n";
	};
}