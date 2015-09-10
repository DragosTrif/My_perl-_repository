#Create an array from a list of eight computer names:
#yogi, booboo, grizzly, rupert, baloo, teddy, bungle, care
#now write code to alter the array:
#i. Change 'baloo' to 'greppy'
#ii. Add 'fozzie' to the end of the array
#iii. Print the resulting array, and its length


#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

my @computer_names = qw( yogi booboo grizzly rupert baloo teddy bungle care );
 
@computer_names[4] = 'greppy';

print "@computer_names\n";

push @computer_names, ( 'fozzie' );

print "@computer_names\nlength:", scalar( @computer_names ),"\n";