#Write a Perl program that checks the PATH environment variable ($ENV{'PATH'}).
#Check that each entry is actually a directory which exists, and that we have (on UNIX
#only) execute access. Print the result of the check for each directory.
#Hint: You can save time by using your answer from Chapter 5, Exercise 2, as a
#template.


#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use Data::Dumper;

my $sep;

if( $^O eq "MSWin32" )
{
	$sep = ';';
}
else
{
	$sep = ':';
}

my $path = $ENV{PATH};
my @dirs = split $sep, $path;

foreach ( @dirs )
{
	if(-d $_ )
	{
		print "the dir  exist $_\n";

		if( -x $_ )
		{
			print "The executabele dirs are $_\n";
		}
	}
}
