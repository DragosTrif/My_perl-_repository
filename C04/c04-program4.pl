#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

#mimimum width
my $formatted = sprintf "%20s", 'some name';
print "<$formatted>\n";

printf "<%20s>\n", 'some name';

my $formatted = sprintf "%-20s", 'some name';
print "<$formatted>\n";

#maximum width
my $formatted = sprintf "%.7s", 'some name';
print "<$formatted>\n";

#combined minimun and maximum width
my $formatted = sprintf "%10.10s", 'some name';
print "<$formatted>\n";
