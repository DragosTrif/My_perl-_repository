#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

sub sreverse($)
{
	my $string = shift;
	return scalar reverse $string;
}

my $raboof = sreverse 'foobar';
printf "$raboof\n";
print sreverse 'foobar', 'foobar';
