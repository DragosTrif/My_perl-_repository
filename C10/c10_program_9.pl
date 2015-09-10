#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use Data::Dumper::Simple;

my @numbers = qw{1 2 3 4 5};

#my @incremented = map $_ + 1, @numbers;
my @incremented = map { local $_ = $_; ++$_ } @numbers;

print Data::Dumper->Dump(
[\@numbers, \@incremented],
['*numbers', '*incremented']
	);

