#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

# this is main
do_stuff( $_ ) for( 1.. 5);

#this braket restricts the scope of $last
{
	my $last = 0;

	sub do_stuff
	{
		my $arg = @_;

		if( $arg == $last )
		{
			print "you called me twice in a row $arg\n";
		}

		$last = $arg;
	} 
}