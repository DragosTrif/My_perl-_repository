#These exercises work with the $# array prefix ($#array):
#(a) Create an array with 10 elements
#(b) Print the highest index of the array
#(c) Assign beyond the end of the array, to an element at index 20
#(d) Save the current highest index in a scalar, and print it.
#(e) Set the array size to 5 elements (index 4)
#(f) Print the array
#(g) Set the array size back to the previous size (using the scalar created in (d)).
#(h) Print the array

#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

my @array = ( 0..9 );

print "@array\n";

print "$#array\n";

@array[20] = 25;

my $highest_element = $#array;
print "\n$highest_element\n";

$#array = 4;
print "@array\n";

$#array = 20;
print "@array\n";