#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use Data::Dumper;
use autodie;

my %config;

while( <DATA> )
{
	next if /^\s*#/; # skip comments
	next unless /(\w+)\s*=\s*(\w+)/; #keys and values;

	my ( $key, $value ) = ( $1, $2 );

	if( exists $config{$key} )
	{ 
		# we’ve already seen this key, so convert the value to an
 		# array reference
 		# Does $config{$key} currently store a scalar or an aref?
 		if( ! ref $config{$key} )
		{
			$config{$key} =  [ $config{$key} ]; 
		}
		push @{ $config{$key} } => $value;
	}
	
	else
	{
		$config{$key} = $value;
	}

}

my $data_start;
seek DATA, $data_start, 0;
print DATA $data_start;
truncate DATA, tell(DATA);

print Dumper(\%config);

__DATA__
# max_tries = 3
max_tries = 2
timeout = 30

user = Ovid
user = Sally
user = Bob
# im not sure this code actualy does something !!!!





