#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use constant PI => 3.1415927; 

sub area_of_circle
{
	my ($radius) = @_;

	return PI *( $radius ** 2);
}

print area_of_circle(3);