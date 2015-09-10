#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use autodie ':all';
use File::Path qw(make_path remove_tree);
use File::Find::Rule;

my @directories = 'chapter_9'
my $svn_dir = File::Find::Rule->find->directory->name('.svn')->exec(sub 
{
	my ($short_name, $directory, $fullname ) = @_;
	remove_tree($svn_dir)
    or die "Cannot rmdir($svn_dir): $!";
})-> in(@directories);

