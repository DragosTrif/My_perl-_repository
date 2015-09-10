#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use lib 'lib';
use Build;

my $line = Build->new({
	point1 => Point->new({ x => -11, y => 1 }),
 	point2 => Point->new({ x => 1, y =>  1 }),
	});

print $line->length;