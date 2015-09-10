#The command line arguments for a script are available within the program from a predefined
#system variable @ARGV.
#Write a program, echo.pl, that prints all its command line arguments to the screen.
#Call the program with a shell wildcard (glob construct), for example:

#!/usr/bin/perl
use strict;
use warnings;
use diagnostics; 

print "@ARGV\n";