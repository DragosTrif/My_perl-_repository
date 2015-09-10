#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

my $height;

do{
	print "give the height of the pyramid\n";
	$height = <>;
}

while( $height < 0 || $height > 24);

my $row;


foreach my $iterartor(1..$height){
	print "#\n";
	$row = $height - 1;

	foreach my $inner($height-$row){
		print "*";
	}
}