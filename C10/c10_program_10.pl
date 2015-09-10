#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

my @sorted = sort by_id <>;
print join ' ' => @sorted;

sub by_id
{
	$a =~ /\|(\d+)/;
	my $a_id = $1;
	$b =~ /\|(\d+)/;
	my $b_id = $1;
	return $a_id <=> $b_id;
}