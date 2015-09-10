#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use autodie ':all';
use File::Path qw(make_path remove_tree);
make_path('chapter_9/test');