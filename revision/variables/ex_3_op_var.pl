#You can choose the terminating text, in this case _END_; which must be on the start
#of a line, all by itself. The semicolon to end the here document must follow the label
#name on the first line.
#(a) Enter and run the program with (as always) warnings set. Can you explain the
#warning?
#(b) Try the following variation on the program (note the quotes around _END_):

#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

my $num = 5;
my $a = <<"_END_";
This is the first line
The number is $num
This is the last line
_END_
print "[$a]\n";