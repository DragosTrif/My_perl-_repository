#!/usr/bin/perl
use strict;
use warnings;

use Test::More ;
use Test::Differences;
#'no_plan';

my %have = (
 numbers => [ 3, 4 ],
 fields => { this => 'that', big => 'bad' },
 extra => [ 3, 4 ],
);
my %want = (
 numbers => [ 3, 4 ],
 fields => { this => 'taht', big => 'bad' },
 extra => [ 4, 4, ],
);
#is_deeply \%have, \%want, 'have and want should be the same';

eq_or_diff \%have, \%want, 'have and want should be the same';
done_testing;