#!/usr/bin/perl
package main;
use strict;
use warnings;
use diagnostics;

package Mycompany::Stuff;
use strict;
use warnings;
use diagnostics;

%Mycompany::Stuff::departament_number_for = (
					finance    => 13,
					programing => 2,
					janitorial => 17,
					executive  => 0,
);

my $departament_number = $Mycompany::Stuff::departament_number_for{finance};

print "My finace deparment number is $departament_number\n";