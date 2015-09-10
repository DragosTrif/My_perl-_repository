#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use autodie;

my $filename = 'chapter_9/targets.txt';
open my $spies_to_espy, '<', $filename; 

while( my $line = <$spies_to_espy>)
{
	next if $line =~ /^\s*#/; #skip coments
	chomp($line);
	my ( $name, $case_number, $description ) = split /\|/, $line;
	print "|$name ||($case_number)|: |$description|\n";
}

close $spies_to_espy; 