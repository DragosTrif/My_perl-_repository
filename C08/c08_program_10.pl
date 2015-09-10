#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use Data::Dumper;

my $string = '42 85 abcd 8 4ever foobar 666 43';
my @even;
push @even => $1 while $string =~ /\b(\d*[02468])\b/g;

print "@even\n";

my $string1 = '42 85 abcd 8 4ever foobar 666 43';
my @odd;
push @odd => $1 while $string1 =~ /\b(\d*[^02468])\b/g;
print "\n@odd\n";