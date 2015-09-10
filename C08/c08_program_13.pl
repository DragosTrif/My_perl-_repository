#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use Data::Dumper;

my $text = "a a b b c cat dddd";
$text =~ s/\b(\w+)\s+\1\b/$1/g;

print $text;