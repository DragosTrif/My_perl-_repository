# Take the subroutine average() 
#add error checking to it. Make sure the error is fatal.
# Hint: Try the looks_like_number() subroutine 
#from Scalar::Util, described earlier in this
#chapter.


#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use Scalar::Util 'looks_like_number';

my @numbers = $ARGV[0];

if( not @ARGV or not looks_like_number(@numbers) or  @numbers < 0 )
{
	die "Usage: $0 positivenumber"
}




sub average
{
	 @numbers = @_;
	my $total   = 0;

	$total     += $_ foreach @numbers;

	return $total / @numbers;
}




print average( 1, 3, 2);	