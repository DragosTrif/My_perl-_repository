#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use lib 'lib';
use Soldier_role;

my $soldier = Soldier_role->new(
	name => 'Schults',
	rank => 'sergent',
);

print $soldier->as_json;