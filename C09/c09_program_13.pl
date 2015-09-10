#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use utf8;
use Encode qw(encode decode);

 
my $string = 'ȘșȚț';
my $length = length($string);
$string = encode('UTF-8', $string);

print "$string has $length characters\n";

