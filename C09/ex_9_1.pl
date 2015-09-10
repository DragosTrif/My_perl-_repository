#The Unix cat utility takes a list of files as arguments and concatenates them, 
#printing the result to STDOUT.
#Write this utility in Perl as cat.pl. (If you know the UNIX cat utility, you don’t need to
#provide the rest of the behavior.
#Modify cat.pl to strip comments and blank lines. 
#Consider a comment to be any line in a file
#that begins with zero or more spaces followed by a # symbol

#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;


while(<>)
{
	next unless /\S/;
	next if /^\s*#/;
	print;
}