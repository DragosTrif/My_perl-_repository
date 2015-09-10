#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use Data::Dumper;

my $prisoner = <<END;
I will not be pushed, filed, stamped, indexed, briefed, debriefed or numbered.
My life is my own.
END

print $prisoner =~ /^I/ ? "Yes\n" : "No\n";
print $prisoner =~ /^My/ ? "Yes\n" : "No\n";
print $prisoner =~ /numbered\.$/ ? "Yes\n" : "No\n";
print $prisoner =~ /own\.$/ ? "Yes\n" : "No\n";
