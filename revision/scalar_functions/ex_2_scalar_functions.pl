#Write a program to extract the directories from the PATH environment variable. Print
#the number of directories, and their names. The values of each environment variable
#are available in a hash, %ENV, with the key as the variable name, for example,
#$ENV{'PATH'}.


#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

#This is a fairly straightforward application of the split function. The ‘if’ statement at
#the start caters for different separators on Microsoft Windows and UNIX. You may
#find this useful if you are writing portable code.

my $Sep;
#$^0 = perl values for dif operaring systems

if ($^O eq "MSWin32")
{
	$Sep = ';';
}
else
{
	$Sep = ':';
}

#$ENV{'PATH'} ???
my $path = $ENV{PATH};

# split separates the hash
my @dirs = split $Sep, $path;

# scalar() prints the number of items in an array; 
print "Number of directories: ", scalar(@dirs), "\n";

# print the directories with "\n"
$" = "\n";
print "Directories:\n@dirs\n";
