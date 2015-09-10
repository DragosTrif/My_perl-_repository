#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use autodie ':all';
use File::Path qw(make_path remove_tree);
use File::Find::Rule;

my $dir = 'chapter_9';


my @svn_dirs = File::Find::Rule->directory->name('.svn')->in($dir);

foreach my $svn_dir (@svn_dirs) 
{
 	remove_tree($svn_dir);
}