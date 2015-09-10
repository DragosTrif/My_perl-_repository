#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

sub reciprocal { return 1/shift }

my $result;
my $ok = eval { $result = reciprocal(3); 1 };
if ($ok) {
 	# do something with $result
 	print $result;
}
else {
 my $error = $@;
 warn "Could not calculate result: $error";
}