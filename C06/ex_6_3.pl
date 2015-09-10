#You want to print out the score for Jim and Mary, but the following code is wrong. What’s wrong
#with it? Show two ways to fi x it.
#my $score_for = {
 #jim => 89,
 #mary => 73,
 #alice => 100,
 #bob => 83.
#my ( $jim, $mary ) = %$score_for{ qw{jim mary} };
#print “$jim $mary”;

#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use Storable 'dclone';


my $score_for = {
 jim   => 89,
 mary  => 73,
 alice => 100,
 bob   => 83,
};

my ( $jim, $mary )     =  @$score_for{ 'jim', 'mary' };
print "$jim, $mary\n";

my ( $jim1, $mary1 )   =  @$score_for{ qw / jim mary /} ;
print "$jim1, $mary1\n";

my %new_sales = %{ dclone(\%$score_for)};
print  "%new_sales\n";


