#Create a hash with several key/value pairs (‘cut and paste’ one from a previous
#exercise if you like).
#• Now create an array from the keys, and another from the values.
#• Print these two arrays with a colon (‘:’) between each value or key (TMTOWTDI).

#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;


my %programs = (
	'Word'        => 'Microsoft',
	'Excel'       => 'Microsoft',
	'WordPerfect' => 'Corel',
	'Notes'       => 'Lotus',
	'WordPro'     => 'Lotus',
	'Navigator'   => 'Netscape'
);

my @keys;
my @values;


	 @keys   =  keys %programs;
	 @values = values %programs;

	 
	 

print  "\@keys: ", ( join ':', @keys ), "\n";
print "\@values: ",( join ':', @values ), "\n";