#Write a program, chars2codepoints.pl, which can take a list of words on the command line
#and print out, in decimal, their code points separated by spaces, having each word’s list of code
#points on a separate line. You can search Wikipedia for interesting lists of words written in other
#scripts.

#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use utf8;
use utf8::all;
use Encode qw(encode decode);
use autodie;



foreach my $word(@ARGV)
{	
	my @chars = split //, $word;
    foreach my $char( @chars )
    {
    	$char = ord($char);
    	print $char;
    }
    print "\n";
}	
