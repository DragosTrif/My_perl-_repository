#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;


my ( $current, $next ) = ( 0, 1 );
my $fibonacci;


for my $iteratror( 1..10 )
{
	 $fibonacci         =  $current;

	( $current, $next ) = ( $next, $current + $next );

	print $fibonacci;

}

