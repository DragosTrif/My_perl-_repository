#!/usr/bin/env perl -T

     use lib 't/tests';
     use Test::Person;
     use Test::Person::Employee;


     Test::Class->runtests;

