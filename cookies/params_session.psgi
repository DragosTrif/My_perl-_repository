use strict;
use warnings;
use Plack::Builder;
use Plack::Request;
use Plack::Session;
use constant SESSION_TIME => 30;
use Template::Tiny;
use File::Slurp 'read_file';
use HTML::Entities 'encode_entities';

builder
{
	enable 'Session';
	mount '/' => sub
					{
						my $env = shift;
						my $request = Plack::Request->new($env);
						my $session = Plack::Session->new($env);
						if( my $redirect = session_expired( $request, $session ))
						{
							return $redirect;
						}

						my @params = get_params_array($request);
						if( $session->get( 'from_login') )
						{
							push @params => {
								name => 'username',
								value => $session->get('username'),
							};
							$session->remove('from_login');
						}

						my %templates_var = (
							params => \@params,
							have_params => scalar( @params ),
							username => $session->get('username'),
							time => time_remaining($session),
						);
							
		
						my $content = get_content('templates/session.tt',\%templates_var);

						return response( $request, $content );
							

						
					};

	mount '/login' => sub
						{
							my $env = shift;
							my $request = Plack::Request->new($env);
							my $session = Plack::Session->new($env);
							my $content;

							if ( $request->param('username') && $request->param('password') )
							{
								$session->set( 'username', $request->param('username') );
								$session->set( 'time', time );
								$session->set( 'from_login', 1 );
								my $response = $request->new_response;
								$response->redirect('/');
								return $response->finalize;
 											
							} 
							else 
							{
								$content = get_content('templates/session.tt');
							}

							return response( $request, $content );
						};				

};

sub get_params_array
{
	my $request = shift;
	my @params;

	foreach my $param ( sort $request->param )
	{
		my $values = join ',' => $request->param($param);
		push @params => {
			name => encode_entities($param),
			value => encode_entities($values),
		};
	} 
}

sub response
{
	my ( $request, $content ) = @_;
	my $response = $request->new_response(200);
	$response->content_type('text/html');
	$response->content($content);
	return $response->finalize;
}

sub get_content
{
	my ( $file, $vars ) = @_;
	$vars ||= {};
	my $template_code = read_file($file);
	my $template = Template::Tiny->new;
	my $output;
	$template->process( \$template_code, $vars, \$output );
	return $output;
}

sub time_remaining {
 my $session = shift;
 my $remaining = SESSION_TIME - ( time - $session->get('time') );
 $remaining = 0 if $remaining < 0;
 return $remaining;
}

sub session_expired {
 my ( $request, $session ) = @_;
 return if time_remaining($session);
 $session->expire;
 my $response = $request->new_response;
 $response->redirect('/login');
 return $response->finalize;
}