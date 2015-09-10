#!/usr/bin/perl
use strict;
use warnings;
#use diagnostics;
use lib 'lib';
use Temperatures;

my @temp = ( 6, 2, 6 );
my @arrayref = \@temp;

my $average = Temperatures->new({temperatures => @arrayref});

printf " average : %.2f" => $average->average_temperature;
#print $average->average_temperature;