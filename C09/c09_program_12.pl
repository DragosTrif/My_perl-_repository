#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use autodie;
#use utf8;


my $string = 'ȘșȚț';
my $length = length($string);
#binmode STDOUT, ':encoding(UTF-8)';
print "$string has $length characters\n";

