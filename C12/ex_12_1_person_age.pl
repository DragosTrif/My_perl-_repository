#!/usr/bin/perl
use strict;
use warnings;
use DateTime;
use Data::Dumper;

use lib 'lib';
use People::persons;


my $employe = People::persons->new(
{
	name => 'Dragos',
	birth => DateTime->new(
	year => 1983,
	month => 1,
	day   => 21,
		),	
	});

print Dumper $employe;
print $employe->as_string,"\n";
print $employe->get_name,"\t";
print $employe->get_date,"\t";
