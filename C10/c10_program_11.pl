#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

my @sorted = map { $_ -> [0] } #undeocrate;
			 sort { $a->[1] <=> $b->[1] } #sort	
			 map {  /\|(\d+)/;  [ $_, $1 ] } <>; #decorate

print join ' ' => @sorted;			 