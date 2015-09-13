use strict;
use warnings;

my $app = sub 
			{
				my $env = shift;

				if( $env->{ PATH_INFO } eq '/Anne_Frank_stamp.jpg')
				{
					open my $fh, "<:raw", "Anne_Frank_stamp.jpg" or die;
					return [ 200, [ 'Content-Type' => 'image/jpg' ], $fh]; 
				}
				elsif( $env->{ PATH_INFO } eq '/')
				{
					return
					[
						200, [ 'Content-type' => 'text/html'], [ get_index() ]
					];
				}
				else
				{
					return
					[
						404, [ 'Content-Type' => 'text/html'],
						['404 Not Found']
					];
				}
			};


	
	sub get_index
	{
		return <<'END';
		<html>
		<head><title>Sample page</title> </head>
		<body>
			<p> Anne Frank was a young lady living in Amsterdam, hiding
 				from the Nazis.</p>
 			<p>	Everyone should read her diaries.</p>
 			<img src="/Anne_Frank_stamp.jpg"/>
		</body>
		</html>
END
	}		