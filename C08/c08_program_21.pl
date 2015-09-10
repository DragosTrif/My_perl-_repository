#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use Data::Dumper;
use Regexp::Common;
print "yes" if '-3e17' =~ $RE{num}{real};


my $text = "Wath the fuck is on my dick??";
$text =~ s/($RE{profanity})/'*' x length($1)/eg;
print $text;