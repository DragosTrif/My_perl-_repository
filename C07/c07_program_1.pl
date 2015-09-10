#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

sub random_die_rool
{
	return 1 + int( rand(6));
}

my $result = random_die_rool();
print $result;