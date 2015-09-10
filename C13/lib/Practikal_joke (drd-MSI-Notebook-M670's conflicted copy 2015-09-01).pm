{
	package Practikal_joke;
	use namespace::autoclean;
	use lib 'lib';
	use Moose;
		with 'Roles::Bomb'   => { excludes => 'explode' },
     		 'Roles::Spouse' => { excludes => 'fuse' };

}     

     
 1;    