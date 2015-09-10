#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use Carp 'croak';

my %length_for = (
	SCALAR => sub { return length ${ $_[0] } },
	ARRAY  => sub { return scalar @{ $_[0] } },
	HASH   => \&_hash_lenght,
);


sub _hash_lenght{ return scalar keys %{ $_[0] } }

sub my_lenght
{
	my $refernce = shift;
	my $lenght   = $length_for{ ref $refernce }
		|| croak "Dont know how to handel $refernce";

		return $lenght -> ( $refernce);
}

my $name    = 'John Q. Public';
my @things  = qw(this that and the other);

my %cheeses = (
 good => 'Havarti',
 bad  => 'Mimolette',
);
print my_lenght( \$name ), "\n";
print my_lenght( \@things ),"\n";
print my_lenght( \%cheeses ), "\n";
print my_lenght($name), "\n";