#!/usr/bin/perl
use strict;
use warnings;
use Text::CSV_XS;
use Data::Dumper;
my $file = 'test.CSV';
open my $fh, '<', $file or die "Cannot open $file for reading: $!";
my $headers = <$fh>; # discard headers
my $csv = Text::CSV_XS->new( { binary => 1, eol => $/ } );


while ( my $row = $csv->getline($fh) ) 
{
	#print "@$row\n";
	#print Dumper @$row;
 printf "Name: %20s Age: %3d Occupation: %10s\n", @$row;
}