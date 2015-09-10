#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
#use utf8;
use utf8::all;
use charnames ':short';
use feature 'unicode_strings';
#use Encode qw(encode decode);
binmode( STDOUT, ":encoding(UTF-8)");
print uc("σ"), "\n"; # Greek small letter sigma
print uc("ς"), "\n"; # Greek small final letter sigma

print "\N{greek:Sigma} is an upper-case sigma.\n";
