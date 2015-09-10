#Take a filename (see below), and split it into the individual elements of the path,
#storing the result into an array. Print the array as a whole, then the first and last
#elements separately.
#What is the first element, and why?

#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

my $path = qw( /usr/local/lib/locale/US_C.C/messages.dat);

my @array_path = split '/', $path;
#print "@array_path\n";

my $array_lenght = scalar( @array_path );
print "$array_lenght\n";

print "The first element is undef:", $array_path[0],"\n";
print "The last element is |$array_path[6]|\n";