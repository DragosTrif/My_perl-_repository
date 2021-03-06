#!/usr/bin/perl

use strict;
use warnings;

use My::Schema::Schema; 

my $schema = My::Schema->connect(
		"dbi:SQLite:dbname=rights.db",
		"",
		"",
		{ RaiseError => 1, PrintError => 0 },
);

# find anything named ‘Anne Frank Stamp’

my $media_rs = $schema->resultset('Media')->search(
	           {name => 'Anne Frank Stamp'});
my $count =  $media_rs->count;
print "We found $count record(s)\n";

print "\nNow finding all media\n\n";
$media_rs = $schema->resultset('Media')->search(
			{},# we want all of them
			{ order_by => { -desc => 'name' } },
);

while( my $media = $media_rs->next )
{
	my $name = $media->name;
	my $location = $media->location;
	my $license = $media->license->name;
	my $media_type = $media->media_type->media_type;


 print <<"END";
Name: $name
Location: $location
License: $license
Media: $media_type
END
}