#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

#array slice 
my $arrayref        = [ qw( foo bar baz quux ) ];
my ( $var1, $var2 ) = @$arrayref[ 1, 2 ];

#hash slice;

my $hashref = {
	this    => 'is',
	another => 'boring',
	example => 'innit?',
};

my ( $first, $second ) = @$hashref{ 'another', 'example' };
print "$var1, $var2\n ";
print "$first, $second\n";