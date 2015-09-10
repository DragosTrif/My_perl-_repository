#Write the code to find the individual number of sales Jim made on Friday and 
#the total number of the sales he made on Friday.
# Assume each number is the total for an individual sale.

#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

my $sales = {
 monday    => { jim => [ 2 ],       mary => [ 1, 3, 7 ] },
 tuesday   => { jim => [ 3, 8 ],    mary => [ 5, 5 ] },
 wednesday => { jim => [ 7, 0 ],    mary => [ 3 ] },
 thursday  => { jim => [ 4 ],       mary => [ 5, 7, 2, 5, 2 ] },
 friday    => { jim => [ 1, 1, 5 ], mary => [ 2 ] },
}; 

my $jim_indvid_sales        = $sales -> {friday}{jim};

my $number_of_individ_sales = @$jim_indvid_sales;
#print $number_of_individ_sales;

my $total_nb_of_sales = 0;

foreach ( @$jim_indvid_sales )
{
	$total_nb_of_sales += $_;
}

#print "$total_nb_of_sales\n";

print "Jim made $number_of_individ_sales on firday and reached a total number of $total_nb_of_sales sales per day\n";
