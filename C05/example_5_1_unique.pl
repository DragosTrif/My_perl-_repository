#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use Data::Dumper;

my @array = ( 3, 4, 1, 4, 7, 7, 4, 1, 3, 8,9, );
my %unordered;

@unordered{ @array } = undef;

foreach my $key ( keys %unordered)
{
	print "unordered : $key\n";
	#print Dumper( $key );
}

my %seen;
my @ordered;

foreach my $element( @array )
{
	if( not $seen{ $element } ++)
	{
		print Dumper( $element);
		push @ordered, $element;
	}
}

foreach my $element( @ordered )
{
	print "ordered: $element\n"
}