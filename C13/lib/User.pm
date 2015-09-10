package User;

use Moose;
with "Does::Tohash";
use namespace::autoclean;
use  Digest::MD5 'md5_hex';
use Carp 'croak';

has 'name' => ( is => 'ro', isa => 'Str', required => 1 );
has 'password' =>( is => 'rw', isa => 'Str', writer => '_set_password', );

sub BUILD
{
	my $self = shift;

	$self-> _set_password(md5_hex( $self->password));


}

sub eq_pass
{
	my ( $self, $password ) = @_;
	$password = md5_hex( $self->password);
	return if($password eq $self->password);
	
}

__PACKAGE__->meta->make_immutable;
1;