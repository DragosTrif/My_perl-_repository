#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

my %birth_year_for = (
	Virgil      			    => 13,
	Shakespeare                 => 42,
	'Elizabeth Barret Browning' => 7,
	'Carrot top'                => 25,

);

my @large_enough = grep { $_ >= 10 } values %birth_year_for;

for my $i(@large_enough)
{
	print "$i\n";
}