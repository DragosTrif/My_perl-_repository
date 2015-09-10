#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use Data::Dumper;

my $string = 'xxxyyyxxxbbbxxxyyy';
$string =~ s/
xxx      #match xxx
(?=yyy)  ## followed by yyy, but not included in the match
/---/xg;
print $string;