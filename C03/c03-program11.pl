# Iterarting over an array

#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

my @array = ("this", "is", "an", "array");

for my $element(@array)
{
	print "$element\n";
}

