#If you have a hash, how can you create a new hash with the values of the original
#hash as its keys, and the keys of the original hash as its values?
#Will the number of keys remain the same?
#Hint: esrever .

#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use Data::Dumper;

my %machines = (
	user1  => 'yogi',
	user2  => 'booboo',
	user3  => 'rupert',
	user4  => 'teddy',
	user5  => 'care',
	user6  => 'winnie',
	user7  => 'sooty',
	user8  => 'padders',
	user9  => 'polar',
	user10 => 'grizzly',
	user11 => 'baloo',
	user12 => 'bungle',
	user13 => 'fozzie',
	user14 => 'huggy',
	user15 => 'barnaby',
	user16 => 'hair',
	user17 => 'greppy'
);

foreach my $index( keys %machines )
{
	print "The keys are |$index| the values are | $machines{ $index }|\n ";
}

my @temp_array = %machines;


my %reversed = reverse @temp_array;

#print Dumper %reversed,"\n";



foreach my $key( keys %reversed )
{
	print "The keys are |$key| the values are |$reversed{ $key }|\n";
}

