package TV::Episode::Version;

use strict;
use warnings;
use base 'TV::Episode::Version';

our $VERSION = '0.01';

sub new
{
	my ( $class, $arg_for ) = @_;
	my $self = bless {} => $class;
	$self ->_initialize($arg_for);
	return $self;

}

sub _initialize
{
	my ( $self, $arg_for) = @_;
	my %arg_for = %$arg_for;

	$self->{description} = exists $arg_for{description} ? delete $arg_for{description}
	: 'Original';

	$self->Super::_initialize(\%arg_for);
}

sub as_string
{
	my $self = shift;
	my $as_string = $self->Super::as_string;
	$as_string .= sprintf "%-14s - %s\n" => 'Version', $self->description;
	return $as_string;
}

1;