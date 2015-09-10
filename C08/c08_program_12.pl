#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use Data::Dumper;

my $main_course = "A well-done filet mignon";
$main_course =~ s/well-done/ rare/;

print $main_course;