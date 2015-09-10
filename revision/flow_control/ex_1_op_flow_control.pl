#Find out if a hash contains duplicate values, without using for, while or any other loop
#constructs. You may assume the hash has no undef values.

#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

my %programs = ('Word' => 'Microsoft',
'Excel' => 'Microsoft',
'WordPerfect' => 'Corel',
'Notes' => 'Lotus',
'WordPro' => 'Lotus',
'Navigator' => 'Netscape');

my %suppliers;

foreach my $key (keys %programs)
{
	my $val = $programs{$key};

	print "$val\n";
	if (! exists $suppliers{$val})
	{
		$suppliers{$val} = undef;
	}
	else
	{
		print "Duplicate value: $val\n";
	}
}