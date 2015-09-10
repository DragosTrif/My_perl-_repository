#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use List::MoreUtils 'uniq';
use Time::HiRes qw(gettimeofday tv_interval);
use Data::Dumper;

my $is_slow = 0;
my @numbers = qw( 3 2 39 7919 997 631 200 7919 459 7919 623 997 867 15 );
@numbers = (@numbers) x 200000;

my @primes;
my $start = [gettimeofday];

if($is_slow)
{
	@primes = grep { is_prime ($_ )} @numbers;

}
else
{
	my %is_prime;
	@primes = grep 
				{
					(exists $is_prime{$_} and $is_prime{$_})
					or
					($is_prime{$_} = is_prime($_))
				}@numbers;
}

my $elapsed = tv_interval($start);
printf  "We took %0.1f seconds to find the primes\n", $elapsed;
print join ', ' => sort { $a <=> $b } uniq @primes;
#print Dumper(\@primes);

sub is_prime
{
	my $number = $_[0];
	return if $number < 2; #this returns fallse;
	return 1 if $number == 2; #this returns true;

	for(2..int sqrt($number))
	{
		return if  !($number % $_); #this returns fallse if the number is not 0(equals with 1)
	}

	return 1;
} 