#Given an array called @ids, create a new array called @upper containing only the values in @ids
#that were all uppercase to begin with.
#my @ids = qw(AAA bbb Ccc ddD EEE);

#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

my @ids   = qw(AAA bbb Ccc ddD EEE);
my @upper =	splice @ids, 1, 6;

for my $count(@upper)
{
	print "$count\n"
}