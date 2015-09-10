#Using <>:

#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use autodie;

my $dir = 'chapter_9/';
my @txt = <$dir/*.txt>; # no quotes
print join "\n", @txt;