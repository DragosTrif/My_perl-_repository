#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

my $word = 'dabchick';
if ( index $word, 'abc' >= 0 ) 
{
	print "Found ‘abc’ in $word\n";
}