#!/usr/bin/perl
use strict;
use warnings;
use DateTime;
use Data::Dumper;

use lib 'lib';
use People::persons_2;


my $employe = People::persons_2->new(
{
	name => 'Dragos',
	birth => DateTime->new(
	year => 1983,
	month => 01,
	day   => 21,
	time_zone => 'local',
	
		),
	date =>	DateTime->new(
	year => 2015,
	month => 01,
	day => 21,
	time_zone => 'local',
	
	),	
	});

print Dumper $employe;
#print $employe->as_string,"\n";
#print $employe->get_name,"\t";
#print $employe->get_date,"\t";



print $employe->as_string,"\n";
print $employe->get_name,"\t";
print $employe->get_date,"\t";
print $employe->set_curent_date," \t";
print $employe->age,"\t";