package TV::Episode::Broadcast;
use strict;
use warnings;
use diagnostics;
use DateTime;

use Try::Tiny;
use Carp 'croak';
use base 'TV::Episode'; # inherit!
#our $VERSION = '0,01';

sub _initialize {
 my ( $self, $arg_for ) = @_;
 my %arg_for = %$arg_for;
 my $broadcast_date = delete $arg_for{broadcast_date};
 try 
 {
	 $broadcast_date->isa('DateTime') or die;
 }
 catch 
 {
 	croak("broadcast_date must be a DateTime object");
 };
 	$self->{broadcast_date} = $broadcast_date;
 	$self->SUPER::_initialize( \%arg_for );
}

sub broadcast_date { shift->{broadcast_date} }

sub as_string {
 my $self = shift;
 my $episode = $self->SUPER::as_string;
 my $date = $self->broadcast_date;
 $episode .= sprintf "%-14s - %4d-%2d-%2d\n"
 => 'Broadcast date',
$date->year,
$date->month,
$date->day;
 return $episode;
}
1;