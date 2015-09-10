#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use autodie;

my $filename = 'chapter_9/targets.txt';

if( -e $filename && -f $filename && -r _ )
{
	print "  
	         |-e| tests if the file exists
	         |-f| testts if is just a plain file
	         |-r| tests if the file is readeble";
}
