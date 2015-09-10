#!/usr/bin/perl
use strict;
use warnings;
use lib 'lib';
use Point_Buildargs;

#my $point = Point_Buildargs->new(

	#x => 3, y => 2);

my $point = Point_Buildargs->new( 3, 2 );

printf "x:%f y: %f " => $point->x, $point->y;	