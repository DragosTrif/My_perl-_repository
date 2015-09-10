#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

my @fools      = qw( jester clown motley);
my $aref       = \@fools;

foreach my $fool( @$aref )
{
	print "$fool\n";
}