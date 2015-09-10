#!/usr/bin/perl
use strict;
use warnings;
#use diagnostics;
use lib 'lib';
use TV::Episode::OnDemand;
use DateTime;

my $ondemand = TV::Episode::OnDemand->new(
	{
		series         => 'Firefly',
 		director       => 'Allan Kroeker',
 		title          => 'Ariel',
 		genre          => 'awesome',
 		season         => 1,
 		episode_number => 9,
 		start_date     => DateTime->new(
 		year  => 2002,
 		month => 11,
 		day   => 21,
 	),
 		end_date      => DateTime->new(
 		year  => 2002,
 		month => 12,
 		day   => 12,	
   ),

	}
);

print $ondemand;
print "The object inheritance isa method:",  $ondemand->isa('TV::Episode::OnDemand') ,"\n";
print "The calss inheritance isa method:",  TV::Episode::OnDemand->isa('TV::Episode') ,"\n";
 if($ondemand->can("episode_number"))
 {
		print "The can method implent test is ",  1  ,"\n";
 }
else
{
	print 0;
}	
print "The version is :",  $ondemand->VERSION  ,"\n";
print "The version is :",  TV::Episode::OnDemand->VERSION  ,"\n";
 

