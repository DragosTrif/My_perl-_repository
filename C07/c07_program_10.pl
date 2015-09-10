#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

sub is_palindrome
{
	my $word = lc shift;

	return $word eq scalar reverse $word;
}

for my $word( qw/ abba ABBA notabba/ )
{
	my $maybe = is_palindrome( $word ) ? "": "not";
	print "$word is $maybe a palindrome\n";
}
