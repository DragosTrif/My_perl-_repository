#Create an array of 5 numbers. 
#Print the numbers, each separated (join’ed?) by a
#semicolon and blank.

#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

my @array =( 0..4 );
print @array;
 @array = join "; ", @array;
 print @array;