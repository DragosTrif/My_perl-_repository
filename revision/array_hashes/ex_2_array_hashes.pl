#Create a hash that contains the following first-name => last-name pairs:
#John Norman
#Robert Anson
#Christopher Fowler
#Robert Harris
#Dan Simmons
#Now add code to prompt for a first name. Use the reply to obtain the last name from
#the hash, and print the full name.
#What happened to the common first names (Robert)? Hint: try swapping them
#around.

#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

my %names = (
	Jhon        => 'Norman',
	Robert      => 'Anson',
	Christopher => 'Fowler',
	Robert      => 'Harris',
	Dan         => 'Simons',
);

print "Enter a first name\n";
my $first = <>;
chomp $first;

#my $first = 'Jhon';

print "$first $names{ $first }\n" ;