#/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;

my $numbers = []; 

while (scalar @$numbers < 6){ 
    my $extracted_number = int (1 + rand(50));

    push @$numbers, $extracted_number if (! grep { $extracted_number == $_ } @$numbers);
}

print "Numbers: ".Dumper($numbers);