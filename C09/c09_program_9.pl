#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use autodie;


my $dir = 'chapter_9/';

opendir( my $dh, $dir );
my @txt = grep{/\.txt/} readdir($dh);
print join "\n", @txt;
closedir $dh;
