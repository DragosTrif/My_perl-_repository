package Test::Person;

use Test::More;
#use Test::Most;
use base 'Test::Class';
use Test::Exception;

sub class { 'Person' }

sub startup : Tests( startup => 1 )
{
	my $test = shift;
	use_ok $test->class;
}

sub constructor : Test(3)
{
	my $test = shift;
	my $class = $test->class;
	can_ok $class,'new';
	ok my $person = $class->new, '... and the constructor should succeed';

	isa_ok $person, $class, '... and the object it returns';
}

sub first_name : Test(3)
{
	my $test = shift;
	my $person = $test->class->new;

	can_ok $person,'first_name';
	ok !defined $person->first_name,
	'... and first_name should start out undefined';

	$person->first_name( 'John');

	is $person->first_name, 'John',
	'and setting its value should succee';

}

sub last_name : Test(3)
{
	my $test = shift;
	my $person = $test->class->new;

	can_ok $person, 'last_name';
	ok !defined $person->last_name,
	'... and last_name should start out undefined';

	$person->last_name('Public');

	is $person->last_name, 'Public',
	'and setting its value should succeed';

}


 sub full_name : Tests(no_plan) {
     my $test   = shift;
     my $person = $test->class->new;
     can_ok $person, 'full_name';

     #throws_ok sub { $person->full_name() },
         #qr{^Both first and last names must be set}
         #'... and full_name() should croak() if the either name is not set';
         		

     $person->first_name('John');

     #throws_ok { $person->full_name }
        # qr/^Both first and last names must be set/,
        #'... and full_name() should croak() if the either name is not set';

     $person->last_name('Public');
     is $person->full_name, 'John Public',
       '... and setting its value should succeed';
 }

1;