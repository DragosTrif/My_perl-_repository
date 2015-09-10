#What is the difference between ‘\n’ and "\n" (if you do not know, try it!).
#Create a variable that contains just a new-line - without using interpolation, and use it
#in a print statement.

#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

my $text = "test";

print "$text\n";
#print '$text\n';

my $new_line = '
';

 print "$text $new_line $text\n";