#In the United States, Social Security numbers are a sequence of three digits, followed by a dash,
#followed by two digits, followed by another dash, followed by four digits, which can look like this:
#123-45-6789.
 #Ignoring that not all combinations of numbers are valid, write a regular expression that matches a
#U.S. Social Security number.

#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

my $social_security_number = '123-43-6789';

if( $social_security_number =~  /^\b\d{3}-\d{2}-\d{4}\b$/)
{
	print $social_security_number;
}
else
{
	print "Not a corect Social Security number ";
}

#/\b\d{3}*?-\d{2}*?-\d{4}*?\b/



