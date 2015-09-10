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

my %months  = (
	'01' =>  'January',
	'02' =>  'February',
	'03' =>  'March',
	'04' =>  'April',
	'05' =>  'May',
	'06' =>  'June',
	'07' =>  'July',
	'08' =>  'August',
	'09' =>  'Octomber',
	'11' =>  'November',
	'12' =>  'December',
	);

 $text =~ s{\b(\d\d\d\d?)-(\d\d?)-(\d\d)(?=\.|\s)}
		{
			sprintf "$months{$2} %d %d", $3, $1
		}ge;



print $text;
