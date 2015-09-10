#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use utf8;
use Encode qw(encode decode);

#the wong way
#my $string = shift @ARGV;
#my $length = length($string);
#$string = encode('UTF-8', $string);
#print "$string has $length characters\n";

# the proper way

my $string = decode ('UTF-8', shift );
my $length = length($string);
$string = encode('UTF-8', $string);
print "$string has $length characters\n";