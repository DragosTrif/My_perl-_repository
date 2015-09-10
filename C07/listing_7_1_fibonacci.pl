#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

sub make_fibonacci
{
	my ( $current, $next ) = ( 0, 1 );

	return sub
	{
		my $fibonacii       = $current;
		( $current,  $next) = ( $next, $current + $next );

		return $fibonacii;
	};
}

my $iterrator = make_fibonacci();

for( 1..10 )
{
	my $fibonacii = $iterrator -> ();

	print "$fibonacii\n";
}