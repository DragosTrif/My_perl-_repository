#Using the Person class described in exercise 1 of this chapter, create a Customer subclass. 
#Per company policy, you will not accept customers under 18 years of age.

package People::customer::customer_list;

use strict;
use warnings;
use Try::Tiny;
use Carp 'croak';
use base 'People::persons_3'; # inherit!

# Ovids solution 
sub _initialize
{
	my ( $self, @args ) = @_;
 	$self->SUPER::_initialize(@args);

 if ( $self->age < 18 ) 
 {
 	croak "Customers must be 18 years old or older";
 }
}



#my solution
#sub customer_list
#{
	#my $self = shift;
	#my $age =  DateTime->now - $self->get_date;

	#if( $age->years < 18 )
	#{
		#croak("Customer  age must be over 18");
	#}

	#try
	#{
		#$age->years > 18 or die;
	#}
	#catch
	#{
		#croak(" $age is to young to be a customer ");
	#};

	#return $age->years;
#}
1;