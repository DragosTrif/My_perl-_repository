#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

my @upper = qw(PUBLIUS OVIDIUS NASSO);
my @lower = qw(publius ovidius nasso);

print join " ", map { ucfirst lc } @upper;
print "\n";

my $name = join ' ', map( ucfirst(lc($_)), @lower );
$name .= "\n";
print "$name";

