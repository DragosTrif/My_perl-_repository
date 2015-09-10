#!/usr/bin/perl
use strict;
use warnings;
use lib 'lib';
use Hand_subtype;

my $fingers = Hand_subtype->new( fingers => -3 );

print $fingers->fingers;