#In Chapter 14, you learned about writing tests. Use qx and Capture::Tiny to write some tests for
#age.pl from Exercise 2.Use the following to verify your program:
#perl age.pl --birthdate 1964-10-18 --age_at 2007-10-02 Charles Stross
#perl age.pl --birthday 1967-06-20
#perl age.pl Ovid

use strict;
use warnings;
use Test::More;
use DateTime;
use Capture::Tiny 'capture';

my ( $stdout, $stderr, @output ) = capture { qx/perl ex_2_chapter_17.pl --string 1964-10-18 --age_at 2007-10-02 Charles-Stross/ };
												

is $output[0], "42 is the age of Charles-Stross\n", 
'Charles Stross was 42 years old when he wrote Halting State';

( $stdout, $stderr, @output ) = capture { qx/perl ex_2_chapter_17.pl --birthday 1967-06-20/};
like $stderr, qr/Unknown option: birthday/, 
'Passing an unknown option should cause the program to fail';

( $stdout, $stderr, @output ) = capture { open my $fh, '|-', 'perl ex_2_chapter_17.pl  Ovid';
	print $fh '1967-06-20';
 };
like $stdout, qr/Give your age in YYYY-MM-DD format/,
'Not entering a birthdate should prompt for our birthday';



#my $today = DateTime->now;

#my $birthday = DateTime->new(
	#year => 1967,
	#month => 6,
	#day => 20,

#);

#my $age = ( $today - $birthday )->years;
#like $stdout, qr/Ovid is $age years old/,
#'... and the program should still tell use the correct age';
#diag $stdout;
#done_testing;

done_testing;