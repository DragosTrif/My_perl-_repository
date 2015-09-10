#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use Data::Dumper;

my $provided_date = '28-9-2011';

$provided_date =~ s{
	(?<day>\d\d?)
	[-/]
	(?<month>\d\d?)
	[-/]
	(?<year>\d\d\d\d?)
}
{
	sprintf "$+{year}-%02d-%02d", $+{month}, $+{day}
}ex;

print $provided_date;