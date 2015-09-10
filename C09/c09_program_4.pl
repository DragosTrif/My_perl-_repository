#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use autodie;

my $filename = 'chapter_9/targets.txt';
open my $fh, '<', $filename;

# each element in @lines gets one line from the file
# remember grep from Chapter 4?

my @lines = sort grep { /^s*#/} <$fh>;
close $fh;

open $fh, '>', $filename;
print $fh @lines;
close $fh;
