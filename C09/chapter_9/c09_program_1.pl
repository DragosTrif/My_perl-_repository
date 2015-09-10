#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

my $filename = 'targets.txt';
open my $spies_to_espy, '<', $filename
 or die "Cannot open '$filename' for writing: $!";
 print $!;