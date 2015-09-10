#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

sub reciprocal { return 1/shift }

for (0 .. 3) {
 my $reciprocal;
 eval {
 $reciprocal = reciprocal($_);
 }; # the trailing semicolon is required
 if ( my $error = $@ ) {
 print "Could not calculate the reciprocal of $_: $error\n";
 }
 else {
 print "The reciprocal of $_ is $reciprocal\n";
 }
}