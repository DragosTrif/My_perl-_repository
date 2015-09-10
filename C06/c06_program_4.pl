#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

my %words = (
    dog   => 'chien',
    eat   => 'manger',
    clown => 'clown',
);

my $english_to_french = \%words;
my %copy              = %$english_to_french;
my $eat               = $english_to_french -> { eat };

while( my ($english, $french) = each %$english_to_french )
{
	print "The french word for $english is $french\n";
}  