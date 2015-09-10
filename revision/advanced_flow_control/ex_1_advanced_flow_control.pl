#This exercise tests your understanding of the loop variable in a foreach loop, so try
#this without running the code. Explain the difference between the following code
#fragments. What will be printed in each case?

#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use Data::Dumper;

print "\n(a):\n";
my $counter = 0;
my @array = (1..10);
for $counter (@array)
{
	print ++$counter, " ";
}
print "\nThe whole array:\n@array\n";
print "\$counter: $counter\n";

print "\n(b):\n";
my $counter = 0;
my @array1 = (1..10);
for $counter (1..10)
{
print ++$counter, " "
}
print "\nThe whole array:\n@array1\n";
print "\$counter: $counter\n";