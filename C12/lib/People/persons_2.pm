package People::persons_2;

use strict;
use warnings;
use DateTime;
use Carp 'croak';
use Try::Tiny;
#use overload '""' => 'as_string';
#use DataDumper;

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

	#$self->{get_name} = [];
	#$self->{get_date} = {};
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
	

	my $age = delete $arg_for{date};
	$self->{date} = $age;
	try
	{
		$age->isa('DateTime') or die;
	}
	catch
	{
		croak("Not a DataTime object: $age");
	};

	if ( $self->get_date >= $self->set_curent_date ) 
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
	my @names = qw/ name date curent_date    age/;

	my $as_string = '  ';
	my $start_date = $self->get_date;
    my $end_date = $self->set_curent_date;

    

	foreach my $name(@names)
	{
		$as_string .= sprintf " %-14s\t", ucfirst($name);# $self->get_name;
	}

	#$as_string .= sprintf "%-14s - $start_date\n" => 'Start date';
	#$as_string .= sprintf "%-14s - $end_date\n" => 'End date';

	return $as_string;
}

sub set_curent_date
{
	 shift->{date}
}

sub age
{
	my $self = shift;
	my $age = $self->set_curent_date - $self->get_date;
	return $age->years;
}


1;