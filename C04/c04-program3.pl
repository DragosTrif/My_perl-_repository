#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

my @musketeers = qw(Aramis Athos Portos);
printf "%s %s\n", @musketeers;
my $two_musketeers = sprintf "%s %s", @musketeers;
print $two_musketeers; 