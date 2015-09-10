#!/usr/bin/perl
use strict;
use warnings;
#use diagnostics;
use lib 'lib';
use Soldier;

my $soldier = Soldier->new(
	rank => 'Private',
	name => 'Billy',
);

print $soldier->set_rank("Caporal");
print $soldier->set_name(" Ryan");