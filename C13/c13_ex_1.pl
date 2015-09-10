#Passwords are generally supplied in plain text. However, it’s a very, very bad idea to ever
#store them like this. Many developers use an MD5 “digest” to rewrite the password. An MD5
#digest takes a string and converts it into a series of characters that are unique to that string.
#However, the process is one-way. Without using software such as rainbow tables (http://
#en.wikipedia.org/wiki/Rainbow_table), you cannot get the original string back.
 #Write a User class that requires a username and password, but has a BUILD method that
#immediately changes the password to an MD5 digest. The Digest::MD5 module was first
#released with Perl 5.7.3 and its use looks like this:
#use Digest::MD5 ‘md5_hex’;
#my $digest = md5_hex($string);
 #Make sure to include a password_eq() method to verify that a new password matches the
#old password.
 #Note: This example should not be considered cryptographically secure. There are some issues
#with it, but hey, this isn’t a book on software security!




#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

use lib 'lib';
use User;
use  Digest::MD5 'md5_hex' ;
use Data::Dumper;

my $test = User->new({
	
		name  => 'Dragos',
		password => 'cuc',
		
		
}
			
			 
		 	

		
		
);




#print $test->dump;
print "Yes\n" if $test->eq_pass('cuc');

print Dumper( $test->to_has); 