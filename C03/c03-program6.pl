#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
my $editor = "Andrew";
my $letter = <<"end_apology";


Dear $editor,
I’m very sorry for mocking you in the last email. I promise it won’t
happen again. Can I still get paid?
Sincerely,
Ovid
end_apology

printf $letter;