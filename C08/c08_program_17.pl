#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use Data::Dumper;

my $text = 'a a b b c cat dddd';
$text =~ s/
		\b
		(?<word>\w+)
		\s+
		\g{word}
		\b
		/$+{word}/gx;

		print $text;