{
	package Practikal_joke;
	use namespace::autoclean;
	use Moose;
		with 'Bomb'   => { excludes => 'explode' },
     		 #'Spouse' => { excludes => 'fuse' };

     #has 'name' => ( is => 'ro', isa => 'Str', required => 1 );
}     

     
 1;    