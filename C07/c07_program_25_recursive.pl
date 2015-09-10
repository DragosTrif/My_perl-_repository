#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

sub F
{
	my $n = shift;
	   $n = int( $n );

	#print "dolar is $n";
	my $negative_number = 'not valid';
	
	

		return $negative_number if $n < 0;
		return 0 if $n == 0;
		return 1 if $n == 1;

		
		
		return  F( $n - 1 ) +  F( $n - 2 );
		
}

print F( 20,5 ); 