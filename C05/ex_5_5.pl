#You’re writing a game and want to randomly generate a character’s statistics for strength, intelligence,
#and dexterity. Each statistic is determined by summing the values of two rolls of a sixsided
#die. For example, if you determine the character’s strength and roll the die twice and get
#the values 2 and 6, the characters strength is 8 (2 + 6). Write the code to generate a new character.
#Remember that the code to simulate one roll of a six-sided die is 1 + int(rand(6)) (from
#Chapter 4). You use a “heredoc” (see Chapter 3) to print the character’s statistics.
#c05.indd 154 8/9/12 9:03 AM
#www.it-ebooks.infoSummary ❘ 155
 
 my %stat_for = (
 strength     => undef,
 intelligence => undef,
 dexterity    => undef,
);
# add your code here
foreach my $i(keys %stat_for)
{
	 $stat_for{ $i } = (1 + int( rand(6) ))  + (1 + int( rand(6) ));
	#$stat_for{ strength }    = (1 + int( rand(6) ))  + (1 + int( rand(6) ));
	#$stat_for{ intelligence} = (1 + int( rand(6) ))  + (1 + int( rand(6) ));
	#$stat_for{ dexterity }   = (1 + int( rand(6) ))  + (1 + int( rand(6) ));
}

print <<"END_CHARACTER";
Strength: $stat_for{strength}
Intelligence: $stat_for{intelligence}
Dexterity: $stat_for{dexterity}

END_CHARACTER
