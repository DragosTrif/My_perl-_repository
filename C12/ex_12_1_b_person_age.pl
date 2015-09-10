#!/usr/bin/perl
use strict;
use warnings;
use DateTime;
use Data::Dumper;

use lib 'lib';
use People::persons_3;


my $employe = People::persons_3->new(
{
	name => 'Dragos',
	birth => DateTime->new(
	year => 1983,
	month => 01,
	day   => 21,
	time_zone => 'local',
	
	
	),
	
	
	
	});





print $employe->as_string,"\n";
print "*" x 15,"\n";
print $employe->get_name,"\t";
print $employe->age,"\t";