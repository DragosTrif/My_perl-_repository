#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

my @words = (
 'laphroaig',
 'house cat',
 'catastrophe',
 'cat',
 'is awesome',
);

foreach my $word (@words) 
{
	if ( $word =~ /cat/ ) 
	{
		print "$word\n";
 	}
}

#STRING =~ REGEX

foreach (@words) 
{
	if (/cat/) 
	{
		print "$_\n";
 	}
}

foreach my $word (@words) 
{
	if ( $word !~ /cat/ ) 
	{
		print "$word\n";
 	}
}

foreach (@words) {
if ( !/cat/ ) {
print "$_\n";
 }
}
