#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

my $sales = {
	monday  => {
	 jim     => [ 3, 4] ,
	 mary    => [ 4 ],
	},

	tuseday => {
	 jim     => [ 3, 5, 1 ],
	 mary    => [ 4 ],
	},

	
};

my $commisions      = $sales -> { tuseday }{ jim };
my $number_of_sales = @$commisions;
my $total           = 0;

foreach ( @$commisions )
{
	$total += $_;

}

print "Jim made $number_of_sales sales on Tuseday and earaned \$$total commisions\n";

my @days_of_the_week = keys %$sales;
print @days_of_the_week;

my @sales_per_people = keys %{ $sales -> { monday } };

print "@sales_per_people\n";
