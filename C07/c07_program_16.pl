#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

if ( my $error = $@ ) {
 warn "Could not load Data::Dumper::Names: $error";
 # delay loading until runtime. This is a standard module
 # included with Perl
 eval "use Data::Dumper";
}

$Data::Dumper::Indent = 0;
my @numbers = ( 1, 2, 3 );
my @new = map { $_++ } @numbers;
print Dumper(\@numbers, \@new);