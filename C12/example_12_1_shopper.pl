#!/usr/bin/perl
use strict;
use warnings;
use lib 'lib';
use Shoper::Personal;

my $shopper = Shoper::Personal->new({
 name => 'aevar',
 budget => 10,
});

$shopper->buy(
 'beer',
 'Ferrari',
 ('coffee') x 2,
 ('ravioli') x 2,
 'beer',
);

print $shopper->get_invoice;

my $next_shopper = Shoper::Personal->new({
 name => 'bob',
 limit => 10,
});
