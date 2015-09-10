#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

my @numbers =  ( -1, 3, 8, -17, 42, 0, 13, -3 );
my ( @negative, @positive);

foreach my $number( @numbers )
{
	if( $number < 0)
	{
		push @negative, $number;
	}

	elsif( $number > 0)
	{
		push @positive, $number;
	}

	else
	{
		#do nothing
	}
}

print "Negaive : @negative\nPositive: @positive\nNumbers: @numbers\n";