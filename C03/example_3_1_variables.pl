#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

my $hero = 'Ovid';
my $fool = $hero;

print "$hero isn't that much of a hero. $fool is a fool\n";

$hero = 'anbody else';
print "$hero is probaly more of hero than $fool\n";

my %snacks   = (
	stinky   => 'limburger',
	yummy    => 'brie',
	surprise => 'soap slices',
);

my @chesse_tray = values %snacks;
print "our cheese tray will have: ";

for my $chesse(@chesse_tray)
{
	print "'$chesse'";
}
print "\n";
