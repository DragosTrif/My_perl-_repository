#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

my @strings1 = qw(aa bb cc dd ee);
my @strings2  = qw(
	an
 intelligent
 robber
 needs
 a
 good
 ladder
);

my @found;

DOUBLED_LETTER: foreach my $double( @strings1)
{
	foreach my $word( @strings2)
	{
		if( index( $word, $double ) != -1 )
		{
			push @found, $double;
			next DOUBLED_LETTER;
		}
	}
}

print "@found\n";