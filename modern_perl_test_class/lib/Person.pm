package Person;

use Moose;

has first_name => ( is => 'rw', isa => 'Str' );
has last_name  => ( is => 'rw', isa => 'Str' );


     sub full_name {
         my $self = shift;
         return $self->first_name . ' ' . $self->last_name;
     }

     1;