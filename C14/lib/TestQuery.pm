package TestQuery;

use strict;
use warnings;
use URI::Escape 'uri_unescape';
use Encode 'decode_utf8';
use Exporter::NoWork;

sub parse_query_string
{
	my $query_string = shift;
	my @pairs = split /[&;]/ => $query_string;
	my %value_for;

	foreach my $pair( @pairs )
	{
		my ( $key, $value ) = split ( /=/, $pair );
		$_ =  decode_utf8( uri_unescape($_) ) for $key, $value;
		$value_for{$key} ||= [];

		push @{$value_for{$key}} => $value;
	}

	return \%value_for;
}

1;

