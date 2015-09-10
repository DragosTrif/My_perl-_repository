#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

my $string = "Athos , Porthos , Aramis";
   $string =~ tr/, /t\ /;
   print    "$string\n";
   
   $string =~ tr/AEIOU/aeiuo/; 
   print    "$string\n";

   $string =~ tr/A-Z/a-z/;
   print    "$string\n";
