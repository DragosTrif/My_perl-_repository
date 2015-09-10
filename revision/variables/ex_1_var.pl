#Using the code fragment above as a guide, prompt the user for a first name then a
#last name, storing these in different scalar variables.
#Now transfer the contents of both these scalars into an array, using a list assignment.
#Print the array with interpolation, not forgetting the new-line character.
#Is it possible to print the hash?
#Dump the hash into the array, using a single assignment, and print the array again.
#Can you explain what is printed ?


#!/usr/bin/perl
use strict;
use warnings;
use diagnostics; 

print "Give me the first name\n";
my $first_name = <>;
chomp $first_name;

print "Give me the last name\n";
my $last_name = <>;
chomp $last_name;

my @array_first_last = qq( $first_name, $last_name );
print @array_first_last;

my %hash;
   $hash{ first  } = $first_name;
   $hash{ second } = $last_name;

print %hash, "\n";

my @new_array = %hash;
print "@new_array\n";