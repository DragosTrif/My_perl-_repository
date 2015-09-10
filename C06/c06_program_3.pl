#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

my @fools      = qw( jester clown motley);
my $aref       = \@fools;

foreach my $i( 0..$#$aref -1  )
{
	my $fool = $aref -> [$i];
	print "$fool\n";
}