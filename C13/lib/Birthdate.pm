package Birthdate;
use Moose;
use MooseX::StrictConstructor;
use namespace::autoclean;
use DateTime;

has 'name' =>( is => 'ro', isa => 'Str', required => 1 );
has 'birthdate' =>( is => 'ro', isa => 'DateTime', required => 0);

__PACKAGE__->meta->make_immutable;

1;