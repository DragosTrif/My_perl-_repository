#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use XML::Simple;
use Data::Dumper;
 $Data::Dumper::Indent   = 1;
 $Data::Dumper::Sortkeys = 1;

my $document =  XMLin( 'example_18_4_library.xml', forcearray => ['author'] );

print Dumper($document);

print XMLout(
	$document,
	ValueAttr => { book => 'isbn' },
	RootName  => 'library',
);
