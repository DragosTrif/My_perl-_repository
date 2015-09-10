#Create an array called @first and assign several values to it. Take a reference to that array, and
#then dereference it into an array named @second. Print both arrays to ensure that you’ve copied
#it correctly.

#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use Storable 'dclone';

my @first  = ( 1..25 );
my $aerf   = \@first;
my @second = @{ dclone( \@$aerf )  };

print "@first\n";
print "@second\n";

##corect solution 

my @second1 = @{ [ @$first ]};
print "@second1\n";