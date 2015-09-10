package Hand_subtype;

use Moose;
use Moose::Util::TypeConstraints;
use namespace::autoclean;

subtype 'Non_negative_integers'
     => as 'Int'
     => where { $_ >= 0 }
     => message { " A hand must have 0 or more figers not $_" };

has 'fingers' =>(
	is => 'ro',
	isa => 'Non_negative_integers',
	required => 1,
	);

__PACKAGE__->meta->make_immutable;

1;	     