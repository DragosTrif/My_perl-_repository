package TV::Episode::OnDemand;
use strict;
use warnings;
use diagnostics;

use Carp 'croak';
use overload '""' => 'as_string';
use base 'TV::Episode'; # inherit!
our $VERSION = '0.01';

sub _initialize
{
	my ( $self, $arg_for ) = @_;
	my %arg_for = %$arg_for;

	# assume these are DateTime objects
	$self->{ start_date } = delete $arg_for{ start_date };
	$self->{  end_date  } = delete $arg_for{end_date};

	# note the > comparison of objects

	if( $self->start_date >= $self->end_date )
	{
		croak("Start date must be before end date");
	}

	$self->SUPER::_initialize( \%arg_for );
}

sub start_date{ shift->{start_date }};
sub end_date{ shift->{end_date }} ;

sub as_string
{
	my $self = shift;
	my $episode = $self->SUPER::as_string;
	my $start_date = $self->start_date;
	my $end_date = $self->end_date;

	# overloaded stringification

	$episode .= sprintf " %-14s - $start_date\n" => 'Start Date';
	$episode .= sprintf " %-14s - $end_date\n"   =>  'End Date';
	$episode .= sprintf " %-14s - %d\n"          => 'Availebel Days', $self->available_days;

	return $episode;
}

sub available_days
{
	my $self = shift;
	# hey, we can even subtract DateTime objects

	my $duration = $self->end_date - $self->start_date;
	return $duration->delta_days;
}


1;