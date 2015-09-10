#!/usr/bin/perl
package Mycompany::Stuff;
use strict;
use warnings;
use diagnostics;

use vars(
	'%department_number_for',
	'$some_other_package_var',
);

%department_number_for = (
	finance     => 13,
	programminf => 2,
	janitorial  => 17,
	executive   => 0,

);

$some_other_package_var = 42;

print "The dep no for finace is $department_number_for{finance}";