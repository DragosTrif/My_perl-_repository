#using hash instead of long if/elsif statements

#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

my %color_code_for = (
	blue  => '#0000FF',
	green => '#00FF00',
	blue  => '#FF0000',
);

print "Give me a color\n";
my $color = <>;

for $color(keys %color_code_for)
{
	if(!$color)
	{
		print "No color found\n";
	}
elsif( my $code = $color_code_for($color))
	{
		print "$code"
	}
}	