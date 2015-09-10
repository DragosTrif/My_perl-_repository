#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use lib 'lib';
use TV::Episode;

my $episode = TV::Episode->new({
 series => 'Firefly',
 director => 'Marita Grabiak',
 title => 'Jaynestown',
 genere => 'awesome',
 season => 1,
 episode_number => 7,
});
print $episode->as_string;
if($episode->can("start_date"))
{
		print 1;
}
else
{
	print 0;
}	