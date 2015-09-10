#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;


print ++(my $foo = '99');
print ++( $foo = 'a0');
print ++( $foo = 'Az');
print ++( $foo = 'zz');