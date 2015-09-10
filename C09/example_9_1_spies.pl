#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use autodie;

while( <> )
{
	if(/^\s*#/) #keep the coments
	{
		print;
		next;
	}
	chomp;
	my ( $name, $description, $number ) = split '\|', $_;

	if( defined $name )
	{
		printf "$name|%05d|$description\n", $number;
	}
}