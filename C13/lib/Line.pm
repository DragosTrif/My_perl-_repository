package Line;
use Point;
use Moose;




has 'point1' => ( is => 'rw', isa => "Point",  required => 1 );
has 'point2' => ( is => 'rw', isa => "Point",  required => 1 );

sub lengt 
{
	my $self = shift;

	return sqrt(
		( $self->point1->x - $self->point2->x )**2 + ( $self->point1->y
		 
		 - $self->point2->y )**2 
	);
}
1;