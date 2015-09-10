package Temperatures;
use Moose;
use Moose::Util::TypeConstraints; # for subtype, as, where
use List::Util 'sum';

has 'temperatures' => ( is => 'rw', isa => subtype ( as 'ArrayRef[Num]', where { @$_ > 0 } ), 
	required  => 1 );



sub average_temperature
{
	my $self = shift;
	my $temperatures = $self->temperatures;
	my $num_temperatures = @$temperatures

	or return;  # an empty temperatures arrayref
	return sum(@$temperatures) / $num_temperatures;
}
1;