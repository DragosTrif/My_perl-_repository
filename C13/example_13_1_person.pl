#!/usr/bin/perl
use lib 'lib';
use Persons;
use strict;
use warnings;
use DateTime;

my $person = Persons->new(

	name => 'Bertrand Russel',
	birthdate => DateTime->new(
		year  => 1872,
		month => 5,
		day   => 18,
		),

	);

print $person->name, "is ", $person->age, " yeras old!\n";
