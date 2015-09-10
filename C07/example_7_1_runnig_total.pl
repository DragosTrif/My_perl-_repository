#!/usr/bin/perl
#use strict;
use warnings;
use diagnostics;
use feature "state";

#this is an array ref
my @numbers = (
	[ 3, 1, 4, 9, 32  ], # total 49
	[ 5, 200          ], # total 205
	[ 22, 75, 100, -3 ], # total 194
);
 
#this for shuld iterate over arrayref and passit as argument to a function
#this dosent work;
foreach my $group( @numbers )
{
	my ( $total, $runnig_total ) = _runnig_total( $group );
	print "Total is $total and running total is $runnig_total\n";

	#print "This gorup var :$group\n";
}

	

sub _runnig_total
{
	state $runnig_total = 0;
	my ($numbers)       = @_;

	my $total      = 0;
	$total        += $_ for @$numbers;
	print "total is $total\n ";
	$runnig_total += $total;


	return $total, $runnig_total;
}