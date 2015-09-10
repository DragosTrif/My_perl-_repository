#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

my %people = (
    'Alice' => 1, 
	'Bob'   => 2,
	'ovid'  => "idiot"
);

#print $people {"ovid"};

for my $element( keys %people)
{
	print "$element is $people{$element}\n";
}

#my $number = $people{"Bob"};
#print "$number\n";

#print "Bob = $number\n";
#print "Bob = $people{'Bob'}\n";				