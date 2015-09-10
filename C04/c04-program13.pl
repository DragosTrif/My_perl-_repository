#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

my %birth_year_for = (
	Virgil      			    => 7,
	Shakespeare                 => 10,
	'Elizabeth Barret Browning' => 14,
	'Carrot top'                => 13,
	Zupi						=> 25,
	Apolodor					=> 42,
	Donald                      => 44,

);


for my $i(keys %birth_year_for)
{
	print "$i\n";
}


for my $key (keys %birth_year_for)
{
	if( $birth_year_for{$key} < 14)
	{
		delete $birth_year_for{$key};
	}
}


for my $i(keys %birth_year_for)
{
	print "the new list is $i\n";
}