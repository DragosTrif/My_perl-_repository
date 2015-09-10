#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

my %odd_couples = (
	'Abbot'  => 'Costtelo',
	'Martin' => 'Lewis',
	'Lemmon' => 'Mathau',
);

while( my ($star1, $star2)  = each %odd_couples )
{
	print " $star1: $star2\n";
}