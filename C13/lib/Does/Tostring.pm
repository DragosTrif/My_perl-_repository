package Does::Tostring;

use Moose::Role;
use Carp 'croak';

sub as_string
{
	my $self = shift;
	my @attributes = map{ $_->name } $self->meta->get_all_attributes;

	my $as_string = ' ';

	foreach my $attribute( @attributes )
	{
		$as_string .= sprintf "%-14s - %s\n", ucfirst($attribute), $self->$attribute;
	}

	return $as_string;
}

1;