#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
#use feature "state";

my @numbers = (
	[ 3, 1, 4, 9, 32  ], # total 49
	[ 5, 200          ], # total 205
	[ 22, 75, 100, -3 ], # total 194
);

foreach my $group( @numbers )
{
	my ( $total, $runnig_total ) = _runnig_total( $group );
	print "Total is $total and running total is $runnig_total\n";

	#print "This gorup var :$group\n";
}

{
	my $runnig_total = 0;

	sub _runnig_total
	{
		my $numbers   = shift;
		my $total     = 0;

		$total        += $_ for @$numbers;
		$runnig_total += $total;

		return $total, $runnig_total;
	}
}