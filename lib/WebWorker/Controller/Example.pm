package WebWorker::Controller::Example;
use Mojo::Base 'Mojolicious::Controller', -signatures;

sub welcome ($self) {
  $self->render(msg => 'Welcome!');
}

sub foo ($self) {
  my $html = $self->render_to_string(msg => 'Foo!');
  my $file = $self->app->home->child('public/foo.html');
  $file->spurt($html);
  $self->render(msg => 'Foo!');
}

sub bar ($self) {
  my $html = $self->render_to_string(msg => 'Bar?');
  my $file = $self->app->home->child('public/bar.html');
  $file->spurt($html);
  $self->render(msg => 'Bar?');
}

1;
