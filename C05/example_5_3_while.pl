#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

my $number = 0; #deliberately a false value;

while( $number > 0 )
{
	print "You shuld never see this\n";
}


do
{
	print "Unfortunately you see this\n";
}
while( $number > 0);