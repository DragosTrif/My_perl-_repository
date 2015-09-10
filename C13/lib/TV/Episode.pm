package TV::Episode;

use Moose;
use MooseX::StrictConstructor;
use My::CustomsTypes; #use Moose::Util::TypeConstraints;
with 'Does::Tostring'; 

use namespace::autoclean;
use Carp 'croak';

our $VERSION = '0.01';

#subtype 'Int_Positive'
		#=> as 'Int'
		#=> where { $_ > 0 }
		#=> message { "You must provide a positive int, not $_"};

has 'series'   =>( is => 'ro', isa => 'Str', required => 1 );
has 'director' =>( is => 'ro', isa => 'Str', required => 1 );
has 'title'    =>( is => 'ro', isa => 'Str', required => 1 );
has 'genere'   =>( is => 'ro', isa => 'Str', required => 1 );
has 'episode_number'  =>( is => 'ro', isa => 'Int_Positive', required => 1);
has 'season'   =>( is => 'ro', isa => 'Int_Positive', required => 1);

#sub as_string
#{
	#my $self = shift;
	#my @attributes = map{ $_->name } $self->meta->get_all_attributes;

	#my $as_string = ' ';

	#foreach my $attribute( @attributes )
	#{
		#$as_string .= sprintf "%-14s - %s\n", ucfirst($attribute), $self->$attribute;
	#}

	#return $as_string;
#}

__PACKAGE__->meta->make_immutable;
1;