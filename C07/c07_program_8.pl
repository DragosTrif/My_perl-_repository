#!/usr/bin/perl
#use strict;
use warnings;
use diagnostics;
#use feature "state";
use feature "state";

 print do_stuff( $_ ) for( 1..5 );




	sub do_stuff
	{
		state $last = 0;
		print "this last var:$last\n";

		my $arg     = @_;

		if( $arg == $last )
		{
			print "you called me twice in a row $arg\n";
		}

		$last = $arg;
		print "this is arg var : $arg\n"

	}

	