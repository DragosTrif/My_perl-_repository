#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use Data::Dumper;

print "Four score score and seven years ago" =~ /\b(\w+)\s+\1\b/ ? "The word ($1) was doubled"
												: "No doubles found";