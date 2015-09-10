#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

my $santa_says = 'ho' x 3.7;
print "$santa_says\n";

my $ho = 'ho';
my @santa_says = ($ho) x 3;

for my $count(@santa_says)
{
	print "$count\n";
}