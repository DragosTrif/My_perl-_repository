#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

#!perl -l
my @array;
print "$#array\n";
 @array = ('fail!');
print "$#array\n";
push @array, 'not fail!';
print "$#array\n";