#Write a Perl script to display the number of files in a directory, the name of which is
#specified by a command line argument, for example

#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

my @files = glob ("$ARGV[0]/*");
print "Fiile in expresions: ", scalar(@files), "\n";