#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

if ( "Phone: 123-456-7890" =~ /(\b\d{3}-\d{3}-\d{4}\b)/ ) 
{
	my $phone = $1;
	print "The phone number is $phone\n";
}