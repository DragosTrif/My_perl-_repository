{
	package Soldier;
	use Moose;
	use MooseX::SemiAffordanceAccessor;

	has 'rank' =>( is => 'ro', isa => 'Str', required => 1 );
	has 'name' =>( is => 'rw', isa => 'Str', required => 1 );
}

1;