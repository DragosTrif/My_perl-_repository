#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

sub how_i_was_called_out
{
	if( not defined wantarray )
	{
		# no return value expected
 		print "I was called in void context\n";
	}
	elsif ( not wantarray ) 
	{
 		# one return value expected
		 print "I was called in scalar context\n";
 	}
 	else 
 	{
 		# a list is expected
 		print "I was called in list context\n";
 	}

}

how_i_was_called_out();
my $foo = how_i_was_called_out();
my ($foo) = how_i_was_called_out();
my @bar = how_i_was_called_out();
my ( $this, $that ) = how_i_was_called_out();
my %corned_beef = how_i_was_called_out();