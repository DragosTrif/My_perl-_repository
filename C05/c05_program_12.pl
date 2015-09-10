#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

my $factorial = 1;
my $counter   = 1;

until( $counter > 5 )
{
	$factorial *= $counter++;
}

print "$factorial\n";


#much clener

my $factorial1 = 1;
my $counter1   = 1;

while( $counter1 <= 5)
{
	$factorial1 *= $counter1++;
}

print "$factorial1\n";