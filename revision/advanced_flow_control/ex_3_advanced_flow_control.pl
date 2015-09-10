#Write a program that continually prompts the user for a number until the user enters
#'quit'. Collect these numbers in an array, and print:
#• All the numbers in the array
#• How many numbers in the array
#• The sum of all the numbers
#• The average of all the numbers
#• The largest and smallest number

#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use Data::Dumper;

my $exit_que;
my @array;
my $counter = 0;


do
{
	
	print "Give me the array elements:\n";
	$exit_que = <> ;
	chomp $exit_que;
	#$array[ $counter  ] =  $exit_que;
	#$counter++;

	push @array, $exit_que;
	

}
while ( $exit_que ne 'quit');

print "the last elment is ", $array[4], "\n";
pop @array;




print "The counter is $counter\n";
print "The array elemnts are:", @array, "\n";
print "The length of the array is :", scalar @array, "\n";

my $total = 0;

foreach my $iterator( @array )
{
	$total += $iterator;
}

print "The total of the elements is |$total|\n";
my $divider = scalar @array;
my $avearge = $total / $divider;
print "The average of the numbers is : $avearge\n";

print Dumper( @array );
my $min = 0;
my $max = 0;

foreach my $number( @array )
{
	if( $max < $number )
	{
		$max = $number;
		
	}

	if( $min > $number )
	{
		$min = $number;
	}
}

print "$min\n";
print "$max\n";

