#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

my %nationality_of  = (
	'Ovid'          => 'Greek',
	'John Davidson' => 'Scotish',
	'Tennyson'      => 'English',
	'Poe'           => 'Tacky',
	);

my @nationality = @nationality_of{'Ovid', 'Poe'};
print "@nationality";