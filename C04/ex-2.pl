#Given the following array of Fahrenheit values, create a new array, @celsius, containing the
#Fahrenheit temperatures converted to Celsius. Remember that to convert Fahrenheit to Celsius,
#you must fi rst subtract 32 and then multiply the number by 5/9.

#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

my @fahrenheit = ( 0, 32, 65, 80, 212 );
my @celsius    = map {  int(($_ -32)*(5/9)) } @fahrenheit;

for my $count(@celsius)
{
	print "$count\n";
}


