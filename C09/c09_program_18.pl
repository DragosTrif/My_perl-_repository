#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use File::Find;

find( \&wanted, 'chapter_9');

sub wanted
{
	if( /\.txt/ && -f $_ && -z _ )
	{
		# only delete empty text files
		 unlink $_ or die "Could not unlink '$File::Find::name': $!";
	}
} 