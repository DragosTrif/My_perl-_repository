#!/usr/bin/perl
use strict;
use warnings;
my $num = .3;
my $bits = 32;
# don’t touch anything below this line
my $accumulator = 0;
my $bitstring = '';
my @fractions;
for ( 1 .. $bits ) {
 my $denominator = 2 ** $_;
 my $fraction = 1 / $denominator;
 if ( $accumulator + $fraction <= $num ) {
 push @fractions, "1/$denominator";
 $bitstring .= "1";
 $accumulator += $fraction;
 }
 else {
 $bitstring .= "0";
 }
}
my $fractions = join " + ", @fractions;
print <<"END";
Fractions: $fractions
Bits: $bitstring
Result: $accumulator

END
