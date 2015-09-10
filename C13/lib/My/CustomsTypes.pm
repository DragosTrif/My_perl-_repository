package My::CustomsTypes;

use Moose::Util::TypeConstraints;

subtype 'Int_Positive'
		=> as 'Int'
		=> where { $_ > 0 }
		=> message { "You must provide a positive int, not $_"};
1;		