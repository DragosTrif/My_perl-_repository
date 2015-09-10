#Representing people in software systems is a common task. Create a simple Person class with
#a name attribute and a birthdate attribute. The latter should be a DateTime object. Provide a
#method named age() that returns the person’s age in years.
 #Hint: You can use DateTime->now to get a DateTime object for today’s date. Subtracting the person’s
#birthdate from today’s date returns a DateTime::Duration object.

package People::persons;

use strict;
use warnings;
use DateTime;
use Carp 'croak';
#use DataDumper;

our $VERSION = 0.01;

sub new
{
	my ( $class, $arg_for ) = @_;
	#my $self = bless {} => $class;
	#$self->_initialize( $arg_for );

	 #return $self;
	 return bless{
	 
	 	name => $arg_for->{name},
	 	birth => $arg_for->{birth},
	 }, $class;
}


sub get_name
{
	

	shift->{name};
	
}

sub get_date{ shift->{birth}}

sub as_string
{
	my $self = shift;
	my @names = qw/ name date /;

	my $as_string = ' ';

	foreach my $name(@names)
	{
		$as_string .= sprintf " %-14s", ucfirst($name), $self->get_name;
	}

	return $as_string;
}
1;