#Given the following list, write a grep statement that creates a new list but without duplicate
#elements. There are several ways you can solve this.
#my @list = qw(
 #bob
 #sally
 #Andromalius
 #sally
 #bob
 #ned
 #Andromalius
#);

#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use List::MoreUtils 'uniq';

my @list = qw(
 bob
 sally
 Andromalius
 sally
 bob
 ned
 Andromalius
);

my @new_list = grep {$_ } uniq @list;

print join "\n" => @new_list;


#or

my %seen;
my @uniquee = grep { not $seen{$_}++} @list;

print "\nThe solution from the book is:\n", join "\n", @uniquee;