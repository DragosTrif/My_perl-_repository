#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use Data::Dumper;

my $provided_date = '28-9-2011';

$provided_date =~ s{
					(\d\d?)    #day
					[-/]       ## - or /
					(\d\d?)    #month
					[-/]       ## - or /
					(\d\d\d\d?) #year
				}
				{
				
					sprintf "$3-%02d-%02d", $2, $1
				}ex;
				

				print $provided_date;