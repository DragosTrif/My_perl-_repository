#Given the following text with dates embedded in the YYYY-MM-DD format, write code that can
#rewrite them as $monthname $day,$year. For example, 2011-02-03should become February
#3, 2011. Assume the dates are valid (in other words, not January 40th or something stupid like
#that).
#my $text = <<’END’;
#We hired Mark in 2011-02-03. He’s working on product
#1034-34-345A. He is expected to fi nish the work on or
#before 2012-12-12 because our idiot CEO thinks the world
#will end.
#END

#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

my $text = <<'END';
We hired Mark in 2011-02-03. He’s working on product
1034-34-345A. He is expected to finish the work on or
before 2012-12-12 because our idiot CEO thinks the world
will end.
END

#while( $text =~ /\b(\d\d\d\d?-\d\d?-\d\d)(?=\.|\s)/gi)
#{
	#my $date = $1;
	#print "$date\n";
#}

while( $text =~ /\b(\d\d\d\d?)-(\d\d?)-(\d\d)(?=\.|\s)/gi)
{
	my $test = $1;
	my $dolar_2 = $2;
	print "dolar 1 is: $test\n";
	print "dolar 2 is: $dolar_2\n";

	if( $test eq '2012' )
	{
		$text =~ 
		s{
			\b(\d\d\d\d?)
			-
			(\d\d?)
			-
			(\d\d)
			(?=\.|\s)


		}
		{
			 "$3-jan-$1"
		}xge;
		
	}
	if( $test eq '2011')
	{
		$text =~ 
		s{
			\b(\d\d\d\d?)
			-
			(\d\d?)
			-
			(\d\d)
			(?=\.|\s)
		 }	

		{
			"$3-feb-$1"
		}xge;
	}
	

	
}


print $text;
