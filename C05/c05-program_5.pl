#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

my @numbers = ( -7, -5, -1, 0, 3, 6, 29 );

foreach(@numbers)
{
	if( $_ < 0 )
	{
		$_ = 0;
	}
}

print join ',', @numbers;

foreach my $number( @numbers )
{
	if ( $number < 0)
	{
		$number = 0;
	}
}
print join ',', @numbers;

