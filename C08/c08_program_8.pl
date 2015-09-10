#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use Data::Dumper;

my $silly = 'The fat cat sat on the mat';
my $at_words = 0;
$at_words++ while $silly =~ /\b\w+at/g;
print $at_words;