package Moblo;
use Mojo::Base 'Mojolicious';

# This method will run once at server start
sub startup {
  my $self = shift;

  # Documentation browser under "/perldoc"
  #$self->plugin('PODRenderer');
  $self->defaults(layout => 'base' );

  # Allows to set the signing key as an array,
  # where the first key will be used for all new sessions
  # and the other keys are still used for validation, but not for new sessions

  $self->secrets(['This secret is used for new sessions']);

  # The cookie name
  $self->app->sessions->cookie_name('moblo');
  
  # Expiration reduced to 10 Minutes
  $self->app->sessions->default_expiration('600');

  # Router
  my $r = $self->routes;

  # Normal route to controller
  $r->get('/')->to('main#index');
  $r->get('/login')->name('login_form')->to(template => 'login/login_form');
  $r->post('/login')->name('do_login')->to('Login#on_user_login');


  my $authorized = $r->under('/admin')->to('Login#is_logged_in');
  $authorized->get('/')->name('restricted_area')->to(template => 'admin/overview');

  $r->route('/logout')->name('do_logout')->to( cb => sub{
  		my $self = shift;
  		$self->session(expires => 1);
  		$self->redirect_to('/');
  	});
}

1;
