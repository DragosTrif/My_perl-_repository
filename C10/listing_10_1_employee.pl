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

@employes = sort
				{
					$b->{years} <=> $a->{years}
					||
					$a->{payscale} <=> $b->{payscale}
					||
					$a->{name} cmp $b->{name}
				} @employes;

printf "Name           Years         Payscale\n";

foreach my $employe(@employes)
{
	printf "%-15s   %2d          %2d\n" => @{$employe}{qw/name years payscale/};
}				
