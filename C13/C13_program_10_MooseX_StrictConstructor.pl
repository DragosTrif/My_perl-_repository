#!/usr/bin/perl
use strict;
use warnings;
use lib 'lib';
use Birthdate;
use DateTime;

my $person = Birthdate->new(
	name => "foo",
	birtdhate => DateTime->new(
		year => 2002,
		month => 1,
		day => 1,	

	),
	
);