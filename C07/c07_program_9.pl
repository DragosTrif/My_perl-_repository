#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

sub is_palindrome
{
	my $word = lc shift;

	if( $word eq scalar reverse $word )
	{
		return 1;
	}
	else
	{
		# a bare return returns an empty list which evaluates to false
		return;
	}
}

for my $word( qw/ abba ABBA notabba/ )
{
	my $maybe = is_palindrome( $word ) ? "": "not";
	print "$word is $maybe a palindrome\n";
}
