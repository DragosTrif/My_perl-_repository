#Write a program that uses a foreach (or for) loop and writes 50 lines of output: the
#first containing a single `X', the second containing two `XX', etc. Hint: for the list of
#values, use a range 1..50

#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

my $word = 'x';

foreach my $amount( 0..49 )
{
	

	print $word x $amount , "\n";
}