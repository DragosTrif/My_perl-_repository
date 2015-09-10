#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

my $numbers_of_rows = 50;
my $space;
my $hash;

foreach my $i(0..$numbers_of_rows)
{
	print ' ';

	$space =  $numbers_of_rows-$i;

	foreach my $j(0..$space)
	{
		print 'A';
		$hash = $space+1;

		foreach my $hases($hash..0)
		{
			--$space;
			print '#';
		}
	}

	print "\n";
}
