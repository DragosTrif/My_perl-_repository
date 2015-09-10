#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use utf8::all;

print join  ' ',map { as_code_point($_) }  sort qw/b ἧ a Σ  1/;

sub as_code_point
{
	my $char = shift;
	die "Only characters!" if length($char) > 1;
	return "U+" . uc sprintf "%04x", ord $char;
}