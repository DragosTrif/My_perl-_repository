#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

my $nr_of_rows = 10;

foreach my $i( 0..$nr_of_rows )
{
	print ' ';

	my $rows = $i - 1;
	foreach my $j(0..$rows)
	{
		print ' ' x $j;
		my $hash = $j-1;
		foreach my $e(0..$hash)
		{
			print '*';
		}
	}

	print "\n";
}