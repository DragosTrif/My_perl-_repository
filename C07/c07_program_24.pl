#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use Data::Dumper;

$Data::Dumper::Sortkeys = 1;

sub my_lc(\%) 
{
	my $hasref = shift;

	foreach my $key( keys %$hasref )
	{
		next if ref $hasref->{ $key };
		$hasref->{ $key } = lc $hasref -> { $key };
	}
}

my $name = 'Ovid';

my %hash = (
 UPPER => 'CASE',
 Camel => 'Case',
);
# hey, no backslash required!

my_lc %hash;
print Dumper(\%hash);