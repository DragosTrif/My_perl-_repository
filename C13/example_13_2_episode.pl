#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use DateTime;
use lib 'lib';
use TV::Episode;
use TV::Episode::Broadcast;

my $episode = TV::Episode->new(
 {
 	series => 'Firefly',
	 director => 'Marita Grabiak',
 	title => 'Jaynestown',
 	genere => 'awesome',
 	season => 1,
 	episode_number => 7,
 }
);
print $episode->as_string;
print "----\n";

my $broadcast = TV::Episode::Broadcast->new(
 {
 	series => 'Firefly',
 	director => 'Allan Kroeker',
 	title => 'Ariel',
	genere => 'awesome',
 	season => 1,
 	episode_number => 9,
	broadcast_date => DateTime->new(
 		year => 2002,
 		month => 11,
 		day => 15,
 	),
 }
);
print $broadcast->as_string;