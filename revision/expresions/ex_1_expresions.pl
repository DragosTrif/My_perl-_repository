#Create a program that prints a text value a variable number of times. Prompt the user
#to enter both the text and the number of times it is to be printed. Hint: use the ‘x’
#operator, we have not covered loops yet!
#Is there a limit to the number of times we can print the text (try entering a very large
#number)?

#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;


my $text = 'ho';

print $text x 10;