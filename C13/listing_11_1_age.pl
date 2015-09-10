use lib 'lib';
use age;
use strict;
use warnings;
use diagnostics;
use DateTime;

my $youngster = age->new(
	name => 'Youngster',
	age => DateTime->new(
		year => 2002,
		month => 1,
		day => 1,
		),
);

print $youngster->name, "is ", $youngster->age, " yeras old!\n";