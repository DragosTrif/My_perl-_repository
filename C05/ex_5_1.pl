#1. What does the following line of code do? How might you improve it?
#print for 1..10;

#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
 
my @array = (1..10);
print $_ foreach( @array);

print "$_\n" foreach(1..10);