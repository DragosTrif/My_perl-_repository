#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use autodie;

my $image = 'chapter_9/really_cool.jpg';

open my $fh, '<', $image;
binmode $fh, ':raw';
my $pics = <$fh>;
print $pics;
close $fh; 