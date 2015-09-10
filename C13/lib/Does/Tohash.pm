#Create a role named Does::ToHash that returns 
#a hash reference representation of an object.
#It should be used only for attributes that do not return a reference.
# Have your User class from exercise 1 consume this role and print
# out the resulting object.
 #Note that Moose automatically provides a dump() 
 #method ($user->dump) to do this for you. This
#exercise is to help you learn how to create roles.

package Does::Tohash;

use Moose::Role;
use Carp 'croak';

sub to_has
{
	 my $self = shift;
	 my @attributes = map{ $_->name} $self->meta->get_all_attributes;

	 my %as_hash;

	 foreach my $attribute( @attributes )
	 {
	 	my $value = $self->$attribute;
	 	next if ref $value;

	 	$as_hash{$attribute} = $value ;
	 }

	 return \%as_hash;
}
1;