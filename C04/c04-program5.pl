#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

my $string    = 'halfhearted';
my $substring = substr $string, 4;
print "$substring\n";

my $string    = 'halfhearted';
my $substring = substr $string, 4, 5;
print "$substring\n";

my $string    = 'halfhearted';
my $substring = substr $string, 0, 4, 'hard';
print "$substring\n$string\n";