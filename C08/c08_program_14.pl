#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use Data::Dumper;

my $text = "a a b b c cat dddd";

$text =~ s/
	\b # word boundary
	(\w+) # capture to $1
	\s+   # whitespace
	\1    # doubled word (matches $1)
    \b    # word boundary
    /$1/gx; #replace doubled with $1

    print $text;