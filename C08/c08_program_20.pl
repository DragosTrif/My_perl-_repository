#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use Data::Dumper;

local $_ =  '28-9-2011';
s{
	(\d\d?)
	[-/]
	(\d\d?)
	[-/]
	(\d\d\d\d)
}
{
	sprintf "$3-%02d-%02d", $2, $1;
}ex;
print;