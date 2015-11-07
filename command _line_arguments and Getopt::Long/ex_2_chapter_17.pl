#Modify your program from Exercise 1 to not prompt the user if the birth date has been supplied
#from the command line. Instead, use the birth date supplied on the command line. If the user
#supplied any extra arguments, assume that she’s the person’s name:
#perl age.pl --birthdate=1955-04-08 Barbara Kingsolver
 #Allow an --age_at parameter to allow a person to specify what day you want to calculate his
#age at.
#perl age.pl --birthdate 1964-10-18 --age_at 2007-10-02 Charles Stross

#!/usr/bin/perl
use strict;
use warnings;
use DateTime;
use DateTime::Duration;
use DateTime::Format::Strptime;
use Data::Dumper;
use Getopt::Long;

my ( $string, $age_at );

GetOptions(
	'string=s' => \$string,
	'age_at=s' => \$age_at,
	
	
) or die "Could not parse options";

my $args = join '-', @ARGV;

unless ($string) {
	print "Give your age in YYYY-MM-DD format\n";
	 $string = <>;
	chomp($string);
}



my $datetime_formatter = DateTime::Format::Strptime->new(
 pattern => '%Y-%m-%d',
 time_zone => 'GMT',
);

my $birthdate = $datetime_formatter->parse_datetime($string);
#print Dumper $birthdate;

my $today =  DateTime->now;

#print Dumper $today;

my $age;

if( $string and $age_at)
{
	$age_at = $datetime_formatter->parse_datetime($age_at);
	$age = $age_at->subtract_datetime($birthdate);
}
else
{
 $age = $today->subtract_datetime($birthdate);
}

if( $args )
{
	print  $age->years," is the age of $args\n";
}
else
{
	print  $age->years;
}

