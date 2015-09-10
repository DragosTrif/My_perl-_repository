#!/usr/bin/perl
use strict;
use warnings;
#use diagnostics;
use lib 'lib';
use Setter_Getter;
#use MooseX::FollowPBP;

my $name = Setter_Getter->new({
	name => 'Dragos'}
	);

printf "%-14s\n" => $name->get_name;
printf "%-14s\n" => $name->set_name('Diana');