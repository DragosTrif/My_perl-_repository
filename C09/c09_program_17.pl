#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use utf8::all;

# latin capital letter d with small letter z
my $character = "\N{U+01F2}";

if ( $character =~ /\p{Lowercase}/ ) {
 print "$character is lower case\n";
}
if ( $character =~ /\p{Uppercase}/ ) {
 print "$character is upper case\n";
}
if ( $character =~ /\p{Titlecase_Letter}/ ) {
 print "$character is title case\n";
}