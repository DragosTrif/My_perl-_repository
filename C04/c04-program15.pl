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

while( my ($key, $value) = each %birth_year_for )
{
	print "$key :$value\n";
}