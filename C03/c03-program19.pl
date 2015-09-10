#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

our $answer = 42;

{
	local $answer = 57;
	print "$answer\n";
}

print "$answer\n";