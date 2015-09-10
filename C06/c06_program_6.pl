#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

my $sales   = {	
	monday      => { jim => 2, mary => 1 },
	tuseday     => { jim => 3, mary => 5 },
	wendneseday => { jim => 7, mary => 3 },
	thursday    => { jim => 4, mary => 5 },
	friday      => { jim => 1, mary => 2 },

};

my $num_sales = $sales -> { friday }{ mary };  
print "$num_sales\n";