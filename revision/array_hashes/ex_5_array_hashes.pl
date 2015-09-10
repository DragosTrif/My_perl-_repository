#This question is concerned with array slices.
#Using the array created in the previous exercise:
#• In one statement, copy the last four elements of the array into a list of
#scalar variables, one for each element (you can call the scalars
#anything you like). Print the four scalars.
#• In one statement, copy the first element of the array into a scalar and
#the next three elements into a new array called @new. Print the
#scalar and the new array.
#• In one statement, add @new onto the end of the array (this does not
#involve a slice), then print the result.

#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

my @computer_names = qw( yogi booboo grizzly rupert baloo teddy bungle care );

my ( $one, $two, $there, $four ) =  @computer_names[ -4..-1 ];
my ( $ascalar, @new ) = @computer_names[ 0..4 ];  
print "the scalar is: |$ascalar|\n", "the array is: | @new|\n";    
 
print " the list is : |$one, $two, $there, $four |";

foreach my $iterator( @new )
{
	push @computer_names,( $iterator );
}

@computer_names = ( @computer_names, @new );

print "\nthe combined arrays are |@computer_names|\n";

 