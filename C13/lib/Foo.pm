package Foo;
use Moose;
use MooseX::Method::Signatures;

method morning( Str $name )
{
	$self->say("Good morning ${name}!");
}
method hello( Str :$who, Int :$age where { $_ > 0 })
{
	$self->say( "Hello ${who}, I am ${age} years old!" );
}
method greet( Str $name, Bool :$excited = 0 )
{
	if ($excited)
	{
		$self->say("GREETINGS ${name}!");
	}
	else
	{
		$self->say("Hi ${name}!");
	}
}

 $foo->morning('Resi'); # This works.
 $foo->hello(who => 'world', age => 42); # This too.
 $foo->greet('Resi', excited => 1); # Yup.
 $foo->hello(who => 'world', age => 'fortytwo'); # Nope.
 $foo->hello(who => 'world', age => -23); # Too bad.
 $foo->morning; # Won’t work.
 $foo->greet; # Fail!
1;