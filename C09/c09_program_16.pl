#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use utf8::all;

my $character ='ἧ';

if( $character =~ /\p{Lowercase}/)
{
	print "$character is lower case\n";
}
if ( $character =~ /\p{Uppercase}/ )
{
	print "$character is upper case\n";
}