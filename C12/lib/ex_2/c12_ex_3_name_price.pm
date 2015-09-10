package c12_ex_3_name_price.pm;
use strict;
use warnings;


sub new {
 my ( $class, $name, $price ) = @_;
 my $self = bless {};
 $self->_initialize( $name, $price );
 return $self;
}

sub _initialize {
 my ( $self, $name, $price ) = @_;
 $self->{name} = $name;
 $self->{price} = $price;
}

sub name { $_[0]->{name} }
sub price { $_[0]->{price} }
1;