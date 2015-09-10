#Word prefixes are also called stems. Write a program that reads standard input with
#one word per input line, finishing on end-of-file (<CTRL>D on UNIX, <CTRL>Z on
#Microsoft Windows). Find (and print) the most popular stems of 2 to 6 characters
#long.

#When given the following input:
#test
#tester
#jest
#compute
#computer
#literate
#literal
#literacy
#continue
#collaborate
#It should give the following output:
#Most popular stem of size 2 is: co (occurs 4 times)
#Most popular stem of size 3 is: lit (occurs 3 times)
#Most popular stem of size 4 is: lite (occurs 3 times)
#Most popular stem of size 5 is: liter (occurs 3 times)
#Most popular stem of size 6 is: litera (occurs 3 times)

#!/usr/bin/perl
#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use Data::Dumper;

my %stems;
my $words;
my $counter = 0;
my $stem;
my $string_end;


#$/ = ' ';


do
{
	print "Give me the words\n";
	$words = <>;
	chomp $words;
	 $stems{ $counter } = $words;
	#push %stems, $words;
	++$counter;


}
while ( $words ne 'quit');

delete @stems{ $counter - 1 };




print Dumper( %stems );



