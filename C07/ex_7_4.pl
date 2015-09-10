#Write a sum() subroutine that sums its arguments via recursion.

#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

sub sum
{
	

	return 0 unless @_;

	my ( $head, @tail ) = @_;
	print "head is ($head)\n";
	print "tail is @tail\n";

	return $head + sum( @tail );

	
}


print sum(1, 93, 3, 5);