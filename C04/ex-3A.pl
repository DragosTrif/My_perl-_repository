#Given an array called @ids, create a new array called @upper containing only the values in @ids
#that were all uppercase to begin with.
#my @ids = qw(AAA bbb Ccc ddD EEE);

#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

my @ids   = qw(AAA bbb Ccc ddD EEE);
my @upper = join ' ', grep { $_ eq uc($_) } @ids; 

for my $count(@upper)
{
	print  $count;
}