#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

use 5.010;
sub how_many {
 state $count = 0; # this is initialized only once
 $count++;
 print "I have been called $count time(s)\n";
}
how_many() for 1 .. 5;


{
	my $count = 0;

	sub how_many
	{
		$count++;
		print "I have been called $count time(s)\n";
	}
	how_many() for 1 .. 5;
}