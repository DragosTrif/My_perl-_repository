#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

my @fools      = qw( jester clown motley);
my $aref       = \@fools;
my $first_fool = $aref->[0];
my $last_fool  = $aref->[1];

print "$first_fool - $last_fool";