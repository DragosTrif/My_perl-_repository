#Imagine you have a block of the following text read from a fi le:
#my $employee_numbers = <<’END_EMPLOYEES’;
#alice: 48472
#bob:34582
# we need to fi re charlie
 #charlie : 45824
# denise is a new hire
#denise : 34553
#END_EMPLOYEES

#Those are employee login names and their user numbers. 
#Obviously, an admin has been sloppy
#in keeping these in a text file. 
#Write code that can read that text and create a hash with employee
#usernames as the keys and employee numbers as the values. There should be no leading or
#trailing whitespace in either the keys or the values. 
#Ignore empty lines and lines starting with a #.

#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use Data::Dumper;

my $employee_numbers = <<'END_EMPLOYEES';
alice: 48472
bob:34582
#we need to fi re charlie
charlie : 45824
#denise is a new hire
denise : 34553
END_EMPLOYEES
my %employee_data_base;


	while( $employee_numbers =~ m/([[:alpha:]]+?)\s*:\s*(\d+)/g)
	{
		$employee_data_base{$1} = $2;
	}


print Dumper(\%employee_data_base)