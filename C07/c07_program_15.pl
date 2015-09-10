#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use Carp qw(croak carp);

sub reciprocal 
{
 	my $number = shift;
 	if ( 0 == $number ) 
 	{
	 	carp "Argument to reciprocal must not be 0";
 	}

 return 1 / $number;
}
print reciprocal(0);
