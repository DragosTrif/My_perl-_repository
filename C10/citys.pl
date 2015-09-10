#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use autodie;

my %table ;
my $filename = 'citys1.txt';
open my $fh, '+<', $filename;

while(<$fh>)
{
	chomp;
	my ( $city, $country ) = split /,/;
	$table{$country} = [] unless exists $table{$country};
	push @{$table{$country}}, $city; 
}


foreach my $country( sort keys %table )
{
	 print "$country : ";
	 my @cities = @{$table{$country}};
	 print join ', ', sort @cities;
	 print ".\n";
}

close $fh;