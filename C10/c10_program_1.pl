#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;


my @list = sort qw(this is a list);
print "@list";

# declare our source code as UTF-8
use utf8;
# and we’re printing UTF-8
binmode STDOUT, 'encoding(UTF-8)';
print join  ' ', sort qw/b ἧ’ aa Σ  1 ג a A/;