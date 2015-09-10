#Given the following array:
#my @employees = (
 #{
 	#first_name => ‘Sally’,
 	#last_name => ‘Jones’,
 	#years => 4,
 	#payscale => 4,
 #},
 #{
 	#first_name => ‘Abby’,
 	#last_name => ‘Hoffman’,
 	#years => 1,
 	#payscale => 10,
 #},
 #{
 	#first_name => ‘Jack’,
 	#last_name => ‘Johnson’,
 	#years => 4,
	 #payscale => 5,
 #},
 #{
 	#first_name => ‘Mr.’,
 	#last_name => ‘Magnate’,
 	#years => 12,
 	#payscale => 1,
 #},
#);
 #Use map to create a new array that looks like this:
#my @names = (
 #‘Jack Johnson’,
 #‘Sally Jones’,
 #‘Mr. Magnate’,
#);
# The names are sorted by last name, ascending, and exclude employees who have been with the
#company a year or less.

#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

my @employees = (
 {
 	first_name => 'Sally',
 	last_name => 'Jones',
 	years => 4,
 	payscale => 4,
 },
 {
 	first_name => 'Abby',
 	last_name => 'Hoffman',
 	years => 1,
 	payscale => 10,
 },
 {
 	first_name => 'Jack',
 	last_name => 'Johnson',
 	years => 4,
 	payscale => 5,
 },
 {
 	first_name => 'Mr.',
 	last_name => 'Magnate',
 	years => 12,
 	payscale => 1,
 },
);

my @sorted = sort
				{
					$a->{last_name} cmp $b->{last_name}
					||
					$a->{first_name} cmp $b->{first_name}
					||
					$a->{years} <=> $b->{years};
					
						
						

				} #@employees;
				grep { $_->{years} > 1} @employees;

foreach my $employes(@sorted)
{
	printf "%-15s %-15s %2d\n" => @{$employes}{qw/last_name first_name years/};
}

my @names = map { $_->{first_name}, $_->{last_name}} @sorted;


print join ', ', @names;



			
