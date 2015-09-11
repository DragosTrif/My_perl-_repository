package Person;
use Carp 'croak';

use Moose;

has first_name => ( is => 'rw', isa => 'Str' );
has last_name  => ( is => 'rw', isa => 'Str' );


  sub full_name {
         my $self = shift;

         unless ( $self->first_name && $self->last_name ) {
             croak("Both first and last names must be set");
         }

         return $self->first_name .' '. $self->last_name;
     }

     1;