#Create an array @numbers with the five numbers: 1, 5, 9, 3.14159 and 2. Print it with
#and without interpolation ("@numbers" and @numbers), and note differences.
#Using the predefined variable $", print each element of the array on a different line
#using a single print statement.

#!/usr/bin/perl
use strict;
use warnings;
use diagnostics; 

my @array = ( 1, 5, 9, 3.14159, 2);

#print @array;
print "with interpolation @array\n";
print "with out interpolation", @array, "\n";
$" = "\n";
print "@array\n";

