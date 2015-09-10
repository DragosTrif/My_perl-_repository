#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use Data::Dumper;

my $string = '';
while ("a1b2c3dddd444eee66" =~ /(\D+)/g ) 
{
 $string .= $1;
}
print $string;