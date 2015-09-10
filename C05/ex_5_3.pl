#Create an array called @numbers and assign some numbers to it. Write the code to print the average
#value of the numbers.

 #!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

my @array   = (4,6);
my $total   = 0;
$total     += $_ foreach @array;
my $average = $total / @array;

print "$total\n";
print "$average\n";

