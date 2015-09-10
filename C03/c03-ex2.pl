#Create a hash with the keys being names of fruits and the values being their normal color. Print
#every key/value pair as a separate line similar to bananas are yellow.

#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

my %fruits_and_colors = (
	'bananas' => "yelow",
	'apples'  => "green",
	'oranges' => "orange"
);

for my $fruits(keys %fruits_and_colors)
{
	
	print "$fruits are $fruits_and_colors{$fruits}\n";
}

