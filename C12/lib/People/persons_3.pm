
package People::persons_3;

use strict;
use warnings;
use DateTime;
use Carp 'croak';
use Try::Tiny;


our $VERSION = 0.01;

sub new
{
	my ( $class, $arg_for) = @_;
	my $self = bless {}, $class;
	$self->_initialize( $arg_for );
	return $self;
}

sub _initialize
{
	my ( $self, $arg_for ) = @_;
	my %arg_for = %$arg_for;
	my $class = ref $self;


	my $name = delete $arg_for{name};
	unless(defined $name && $name =~ /\S/)
	{
		croak("$class requires a name to be set");
	}

	$self->{name}=$name;

	my $date = delete $arg_for{birth};

	try
	{
		$date->isa('DateTime') or die;
	}
	catch
	{
		croak("Not a DataTime object: $date");
	};
	
	$self->{birth}=$date;
	
	if ( $self->get_date >= DateTime->now ) 
	{
 		croak("Start date must be before end date");
 	}

	my $extra = join ', ' => keys %arg_for; 

	
}

sub get_date{ shift->{birth}}
sub get_name{ shift->{name}}
sub as_string
{
	my $self = shift;
	my @names = qw/ name  age/;

	my $as_string = ' ';
	#my $start_date = $self->get_date;
    #my $end_date = $self->set_curent_date;

    

	foreach my $name(@names)
	{
		$as_string .= sprintf " %-5s", ucfirst($name);# $self->get_name;
	}

	return $as_string;
}

sub set_curent_date
{
	 shift->{date}
}



sub age
{
	my $self = shift;
	
	my $age =  DateTime->now - $self->get_date;
	#my $age = 32;DateTime->now
	
	return $age->years;
}


1;