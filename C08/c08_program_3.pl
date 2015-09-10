#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

my @strings = qw(
abba
abacus
abbba
babble
Barbarella
Yello
);

my @regexes = (
qr/ab?/,
qr/ab*/,
qr/ab+/,
);

foreach my $string (@strings) 
{
	foreach my $regex (@regexes) 
	{
		if ( $string =~ $regex ) 
		{
			print "'$regex' matches '$string'\n";
 		}
 	}
}