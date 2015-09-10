#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use lib 'lib';
use Line;

my $line = Line->new({
	point1 => Point->new({ x => 1, y => -1 }),
 	point2 => Point->new({ x => 4, y => -5 }),
	});

print $line->lengt;
