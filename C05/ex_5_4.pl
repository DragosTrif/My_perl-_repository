#Developers new to Perl who have experience with languages such as Java or C might write the
#following bit of code. However, it has a logic error. Explain what the logic error is and what
#the programmer might have done to see the logic error when running the code. Then rewrite the
#code in a simpler format.
#my @array = qw( fee fie foe fum );
#my $num_elements = @array;
#foreach ( my $i = 0; $i <= $num_elements; $i++ ) {
 #print “$array[$i]\n”;
#}

#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

my @array = qw( fee fie foe fum );

foreach my $i( @array )
{
	print " $i\n"
}

for( my $j = 0; $j < @array; ++$j )
{
	print "@array[$j]\n"
}