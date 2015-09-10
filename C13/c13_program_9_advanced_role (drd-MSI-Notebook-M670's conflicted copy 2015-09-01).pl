#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use lib 'lib';
use Practikal_joke;

my $joke = Practikal_joke->new(); #( bomb => 'dud');
$joke->explode();
$joke->fuse();

