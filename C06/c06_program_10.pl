#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;


#array slice

my @array           = qw( foo bar baz quux );
my ( $var1, $var2 ) = @array[ 1, 2 ];

#hash slice 

my %hash = (
	this    => 'is',
	another => 'boring',
	example => 'innit?',
);

my ( $first, $second ) = @hash{ 'another', 'example' };

print "$var1, $var2\n ";
print "$first, $second\n";