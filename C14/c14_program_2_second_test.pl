#!/usr/bin/perl
use strict;
use warnings;

use Test::More 'no_plan';

ok(7, '7 should evaluate to a true value');
is (5 - 2, 3, '... and 5 - 2 should equal three');
ok (0, 'This test is designed to fail');