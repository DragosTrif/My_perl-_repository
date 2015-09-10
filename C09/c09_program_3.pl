#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use autodie;

my $filename = 'chapter_9/targets.txt';
open my $fh, '>>', $filename;

print $fh "Maxwell Smart|86|Definitely a spy\n";