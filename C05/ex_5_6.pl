
 my %stat_for = (
 strength     => undef,
 intelligence => undef,
 dexterity    => undef,
);
# add your code here
Execeptional_charcter : foreach my $hero_capability(keys %stat_for)
					    {
							 $stat_for{ $hero_capability } = (1 + int( rand(6) ))  + (1 + int( rand(6) ));

							 if( $stat_for{ $hero_capability } < 6  )
							 {
							 	redo Execeptional_charcter;
							 }
								
						}

print <<"END_CHARACTER";
Strength: $stat_for{strength}
Intelligence: $stat_for{intelligence}
Dexterity: $stat_for{dexterity}

END_CHARACTER
