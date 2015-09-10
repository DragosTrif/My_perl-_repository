#Write a program, codepoints2char.pl, that can take a list of decimal (not hexadecimal) numbers
#and print the Unicode character. Assume UTF-8. Try running it with the following:
#perl codepoint2char.pl 3232 95 3232.

#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use utf8;
use utf8::all;
use Encode qw(encode decode);
use autodie;

binmode STDOUT, ':utf8';
   
	#my $length = length($string);

while( my $string = shift)
{	
    
	print chr($string) ;
}	

	#print chr($string) ;
	