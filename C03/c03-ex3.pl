#Create an array with the values “Andrew,” “Andy,” and “Kaufman” (without the quotes). Write a
#program that prints Andrew “Andy” Kaufman.

#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

my @array = qw(Andrew Andy Kaufman); 
print qq{ $array[0] "$array[1]" $array[2]};