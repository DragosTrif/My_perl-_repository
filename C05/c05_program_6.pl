#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

my %economic_description = (
	libertarians => 'Anarchists with jobs',
    anarchists   => 'Libertarians without jobs',
    randroids    => 'Closet libertarians',
    democrats    => 'the tax and spend party',
    republicans  => 'the tax cut and spend party',

);

foreach( sort keys %economic_description)
{
	my $description = lc $economic_description{$_};
	$_              = ucfirst;
	print "$_ are $description\n";
}