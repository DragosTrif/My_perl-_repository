#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use Email::Valid;

print (Email::Valid->address ? 'yes' : 'no');