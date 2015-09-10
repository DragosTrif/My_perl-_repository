#Write a Perl program that reads a string $text (see above), then print it using each
#of the interpolations, \l \L \u \U \Q (see Page 9 of this chapter). For example,
#using \U means: print "\U$text\n";

#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

print "Enter txt\n";

my $text = <>;
chomp $text;

print $text;

print "Using no commands: $text\n";
print "Using the \\l command: \l$text\n";
print "Using the \\u command: \u$text\n";
print "Using the \\L command: \L$text\n";
print "Using the \\U command: \U$text\n";
print "Using the \\Q command: \Q$text\E\n";