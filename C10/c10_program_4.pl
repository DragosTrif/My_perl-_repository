#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

my @employes = (
	{
		name     => 'Sally Jones',
		years    => 4,
		payscale => 4,
	},

	{
		name     => 'Abby Hoffman',
		years    => 1,
		payscale => 10,
	},

	{
		name     => 'Jack Jhonson',
		years    => 4,
		payscale => 5,
	},

	{
		name     => 'Mr. Magnate',
        years    => 12,
        payscale => 1,
	}	
);


sub by_seniority_the_pay_then_name
{
	$b->{years} <=> $a->{years}
 	||
 	$a->{payscale} <=> $b->{years}
 	||
 	$a->{name} cmp $b->{name}
};

printf "Name           Years         Payscale\n";

 @employes = sort by_seniority_the_pay_then_name @employes;

 foreach my $employe(@employes)
 {
 	printf "%-15s %2d                 %2d\n" => @{$employe}{qw/name years payscale/};
 }