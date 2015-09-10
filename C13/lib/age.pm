


{

	 # remember that the package declaration is lexically scoped,
     # so the brackets around this package keep it separate from
     # the rest of your code
	package age;
	use namespace::autoclean;
	use Moose;
	use DateTime;
	use My::Company::Moose::Types;

	has 'name' =>(
		is => 'ro', isa => 'Str', required => 1,
	);

	has 'age' =>(
		is => 'ro', isa => 'MyCompany:18orOlder', required => 1,
	);

	__PACKAGE__->meta->make_immutable;
}
1;	