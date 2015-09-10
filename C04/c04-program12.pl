#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

my %birth_year_for = (
	Virgil      			    => '70 BCE',
	Shakespeare                 => '1564 CE',
	'Elizabeth Barret Browning' => '1806 CE',
	'Carrot top'                => '1965 CE',

);

for my $i(keys %birth_year_for)
{
	print "$i\n";
}

delete $birth_year_for{'Carrot top'};

for my $i(keys %birth_year_for)
{
	print "The delete has is: $i\n";
}


if(exists $birth_year_for{'Carrot top'})
{
	print "Carrot Top not expurgated!";
 	
}
else
{
	print "Carrot Top not found!";
}  