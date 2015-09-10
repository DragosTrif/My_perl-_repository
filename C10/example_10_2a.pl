#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use List::MoreUtils 'uniq';
use Time::HiRes qw(gettimeofday tv_interval);

my @numbers = qw( 3 2 39 7919 997 631 200 7919 459 7919 623 997 867 15 );
@numbers = (@numbers) x 200000;
my $start = [gettimeofday];

my @primes = grep { is_prime($_) } @numbers;
my $elapsed = tv_interval($start);
printf  "We took %0.1f seconds to find the primes\n", $elapsed;
print join ', ' => sort { $a <=> $b } uniq @primes;

{
	my %is_prime;
	sub is_prime
	{	
		my $number = $_[0];
		return $is_prime{ $number} if  exists $is_prime{$number};
		$is_prime{$number} = 0 if $number < 2;
		$is_prime{$number} = 1 if $number == 2;
		#return if $number < 2; #this returns fallse;
		#return 1 if $number == 2; #this returns true;

		for(2..int sqrt($number))
		{
			#return if  !($number % $_); #this returns fallse if the number is not 0(equals with 1)
			if ( !($number % $_))
			{
				$is_prime{$number} = 0;
				last;
			}
		}
		$is_prime{$number} = 1 if !exists $is_prime{$number};
		return $is_prime{$number};
 			
 	}		
		#return 1;
} 