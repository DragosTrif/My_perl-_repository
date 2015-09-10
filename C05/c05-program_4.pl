#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

# wich is more used ?
my @names = ("Tudor\n", "Dragos\n", "Alin\n");

foreach( @names )
{
	chomp;

	if($_)
	{
		print;
	}
}

foreach my $name(@names)
{
	chomp $name;

	if($name)
	{
		print $name;
	}
}