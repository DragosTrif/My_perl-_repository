#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use lib 'lib';
use Foo;
use MooseX::Method::Signatures;

#my $val = 'Resi';

#$foo->morning;

 $foo->morning( =>'Resi'); # This works.
 #$foo->hello(who => 'world', age => 42); # This too.
 #$foo->greet('Resi', excited => 1); # Yup.
 #$foo->hello(who => 'world', age => 'fortytwo'); # Nope.
 #$foo->hello(who => 'world', age => -23); # Too bad.
 #$foo->morning; # Won’t work.
 #$foo->greet; # Fail!

 