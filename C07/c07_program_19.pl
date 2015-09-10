#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

sub reciprocal { return 1/shift }

my $result;
my $ok = do
{
	local $@;

	eval { $result = reciprocal(0); 1 };
	
	if( $ok )
	{

	}
	else
	{
		my $eroor = $@;
	    warn "Could not calculate result: $error";
	}


}

