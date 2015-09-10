#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use Data::Dumper;

my $childs_essay = <<'END_ESSAY';
The queen rules over the United Kingdom and is loved by
her subjects but a queen ant just lays a lot of eggs.
The queen lives in a palace and the queen bee lives
in a hive.
END_ESSAY

$childs_essay =~
s/
the
\s+
queen
\s+
(?!ant|bee)
/Queen Elisabeth /gxi;

print $childs_essay;