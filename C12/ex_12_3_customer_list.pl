#!/usr/bin/perl
use strict;
use warnings;
use DateTime;
use Data::Dumper;

use lib 'lib';
use People::customer::customer_list;




my $employe = People::customer::customer_list->new(
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