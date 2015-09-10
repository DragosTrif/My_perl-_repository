#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use CGI;
use Data::Dumper;

my $foo;
sub handler {};

my $scalar     = ref $foo;
my $scalararef = ref \$foo;
my $arrayref   = ref \@ARGV;
my $hashref    = ref \%ENV;
my $coderef    = ref \&handler;
my $globref    = ref \*foo;
my $regexref   = ref qr//;
my $objectref  = ref CGI->new;

my $sales   = {	
	monday      => { jim => 2, mary => 1 },
	tuseday     => { jim => 3, mary => 5 },
	wendneseday => { jim => 7, mary => 3 },
	thursday    => { jim => 4, mary => 5 },
	friday      => { jim => 1, mary => 2 },

};

print Dumper( $sales );

print <<"STOP";
  Scalar:     $scalar 
  Scalar ref: $scalararef
  Array ref:  $arrayref
  Hash ref:   $hashref
  Code ref:   $coderef
  Glob ref:   $globref
  Object ref: $objectref


STOP
