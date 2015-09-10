#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

my @things_in_common = ('liars', 'fools', 'certain politicians');
my %count_for =( ussles_things => scalar @things_in_common);
print "$count_for{ ussles_things }\n";