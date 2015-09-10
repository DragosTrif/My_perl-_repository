#One of the first programs many people write is a lottery number generator – to
#generate six random integers between 1 and 50. A Perl lottery program can use the
#function rand to get a pseudo-random number. This function generates a number
#between zero and its first argument, for example rand 1234 will give a number
#between zero and 1234. Unfortunately, the numbers it returns are double precision.
#Easy so far? Remember that you need six numbers, and that you could call rand
#six times but get the same number more than once (there are many possible
#solutions to this).
#Print out your six numbers in sorted order, with a space between each, for example:
#1 8 12 27 30 34
#We have only shown how to do a textual sort so far, to sort numerically use:
#sort {$a<=>$b} (some-list);

#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use Data::Dumper;

my @random_numbers    = undef;
my %doubles;
@doubles{ @random_numbers } = undef;
print @doubles{ @random_numbers };
 

foreach my $random( 0..5 )
{
	@random_numbers[$random] =  int (1 + rand(50)) ;
	
}


foreach my $key( keys %doubles )
{
	print "the doubles are: $key\n";
	#$key = int (1 + rand(50)) ;
}

print  "the random numbers are |@random_numbers|\n";
#sprint Dumper \@random_numbers;