#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

my @names = ('Alice', 'Bil', 'Chathy', 'Doug');
my @men = @names[1, 3];
my @women = @names[0, 2];

print "@men\n";
print "@women\n";