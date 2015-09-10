 #The following code has a syntax error. Fix it.
 #my $temperature = 22;
#print $temperature < 15? “Too cold!\n”
 #: $temperature > 35? “Too hot!\n”;

 #!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

my $temperature = 22;

 $temperature = ( $temperature < 22) ? print "it is to hot\n"
              : ( $temperature > 35) ? print " it is to cold\n"
              :                        print "Just ok\n" ;