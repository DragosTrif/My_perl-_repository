#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use lib 'lib';
use TV::Episode::Broadcast;

my $broadcast = TV::Episode::Broadcast->new(
{
	series         => 'Firefly',
 	director       => 'Allan Kroeker',
 	title          => 'Ariel',
 	genre          => 'awesome',
 	season         => 1,
 	episode_number => 9,
 	broadcast_date => DateTime->new(
 		year => 2002,
 		month => 11,
 		day   => 15,
 	),
 }
);

print $broadcast->as_string;
print $broadcast->series;