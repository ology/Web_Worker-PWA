package WebWorker;
use Mojo::Base 'Mojolicious', -signatures;

sub startup ($self) {
  my $config = $self->plugin('NotYAMLConfig');

  $self->secrets($config->{secrets});

  my $r = $self->routes;

  $r->get('/')->to('example#welcome');
  $r->get('/foo')->to('example#foo');
  $r->get('/foo/bar')->to('example#bar');
}

1;
