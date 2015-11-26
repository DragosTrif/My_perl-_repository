#!/usr/bin/env perl
use Mojolicious::Lite;
use lib 'lib';
use MyApp::Model::Users;

# Helper to lazy initialize and store our model object
helper users => sub { state $users = MyApp::Model::Users->new };

# http://127.0.0.1:3000/?user=sebastian&pass=secr3t
any '/' => sub
            {
            	my $c = shift;
            	# Query parameters
            	 my $user = $c->param('user') || '';
            	 my $pass = $c->param('pass') || '';

            	  # Check password
            	  return $c->render(text => "Welcome $user.")
            	  if $c->users->check($user, $pass);

            	  # Failed
            	   $c->render(text => 'Wrong username or password.');

            };


#get '/' => sub
 			  #{
					#my $c = shift;
					#$c->render(text => 'Hello World !');
              #};

app->start;           