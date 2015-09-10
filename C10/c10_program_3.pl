#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
print "\nthe Default(by charcter) sort is:\n";
print join "\n", sort qw/1 9 10 99 222/;
print "\nthe numeric sort is:\n";
print join "\n", sort{ $a <=> $b } qw/1 9 10 99 222/;


