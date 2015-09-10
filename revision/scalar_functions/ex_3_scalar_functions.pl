#The substr function is used to extract a sub string from the middle of a text. Use
#it to extract the word 'feed' from the text 'Did you feed the dog today?'.
#Of course it would be unrealistic to expect the word 'feed' and the text line to be
#hard-coded, they would probably come from some outside source. Therefore do
#not hard-code the length of the word or its offset, use length and index to find
#them instead.
#(b) You can also assign to a sub-string (i.e. use the function as an lvalue). Use this
#feature to replace the word `dog' by `cat' in the example text.
#(c) You can grow and shrink strings by assigning to the substr function. Use this
#feature to replace 'dog' with 'Labrador' in the example text.


#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

my $string = 'Did you feed the dog today?';
print "The original string is: |$string|\n";

my $word = index $string, 'feed';
print "the position of feed is: |$word|\n";
my $length_of_feed = length('feed');
print "the length of feed is : |$length_of_feed|\n"; 

my $substring = substr $string, 8, 4;
print "the extracted is : |$substring|\n";

my $word2 = index $string, 'dog';
print "the position of dog is : |$word2|\n";
my $length_of_dog = length('dog');
print "the length of dog is : |$length_of_dog|\n";

my $substring2 = substr $string, 17, 3;
print "the extracted is : |$substring2|\n";

my $string2 = substr $string, 17, 3, 'cat';
print "The modified string is: |$string|\n";

my $string3 = substr $string, 17, 3, 'labrador';
print "The enlagred string  is: |$string|\n";




