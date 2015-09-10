#Given the following list of hexadecimal numbers, print them in descending numeric order;
#my @numbers = ( 0x23, 0xAA, 0xaa, 0x01, 0xfB );

#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

my @numbers = ( 0x23, 0xAA, 0xaa, 0x01, 0xfB );

my @sorted_numbers = join "\n", sort { $b <=> $a } @numbers;
print "the naive sort numbers are  : @sorted_numbers\n";


#printing hexadecimals 
my @numbers = ( 0x23, 0xAA, 0xaa, 0x01, 0xfB );
my @sorted = sort { $b <=> $a } @numbers;
print join ', ' => map { sprintf "0x%X", $_ } @sorted;

		 
