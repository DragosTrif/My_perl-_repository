use strict;
use warnings;
use Test::More ;
use Test::Exception;

use lib 'lib';
# Exporter::NoWork used the :ALL tag to import all functions
use TestMe ':ALL';

#ok 1, 'this is a test!';

ok reciprocal(2), 'The reciprocal of 2 shuld be true';
is reciprocal(2), .5, 'The reciprocal of 2 should be correct';
#is reciprocal(3), .5, 'The reciprocal of 3 should be correct';
is sprintf( "%.4f", reciprocal(3)), .3333, 'The reciprocal of 3 should be correct';
like order_date(), qr{^ \d\d/\d\d/\d\d\d\d $ }x, 'today() should return a DD/MM/YYYY format';

TODO: 
{
	local $TODO = 'Figure out how to avoid random order';
	my @have = unique( 2, 3, 5, 4, 3, 5, 7 );
	my @want = ( 2, 3, 5, 4, 7 );
	is_deeply \@have, \@want, 'unique() should return unique() elements in order';
}

eval { reciprocal(0) };
my $error = $@;
like $error, qr{Illegal division by zero at t/testit.t},
 'reciprocal(0) should report an error from the caller';

 #throws_ok { reciprocal(0) }
 #qr{Illegal division by zero at t/testit.t},
 #'reciprocal(0) should report an error from the caller';

done_testing;