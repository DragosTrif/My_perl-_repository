#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

print "Give me the temp\n";
my $user_input = <>;

if($user_input > 0)
{
	print "The temperature is above frezing\n";
}

elsif( $user_input < 0)
{
	print "The temperature is below frezzing\n";
}
else
{
	print "The temp is 0\n";
}