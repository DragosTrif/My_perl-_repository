#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use autodie;

#using glob()

my $dir = 'chapter_9/';

my @txt = glob("$dir/*.txt");
print join "\n", @txt;