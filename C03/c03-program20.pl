#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

our $answer = 42;

{
	local $answer = $answer;
	print "$answer\n";

	local $answer = $answer+2;
	print "$answer\n";
}

print "$answer\n";