package App::Kaizendo::Web::Model::Projects;
use Moose;
use MooseX::Types::LoadableClass qw/ClassName/;
use namespace::autoclean;

extends 'Catalyst::Model::KiokuDB';

__PACKAGE__->config(
    manage_scope => 1,
    clear_leaks => 1,
    model_class => 'App::Kaizendo::Datastore',
);

has '+model_class' => ( isa => ClassName, coerce => 1 );

__PACKAGE__->meta->make_immutable;

=head1 NAME

App::Kaizendo::Web::Model::Projects

=head1 AUTHORS, COPYRIGHT AND LICENSE

See L<App::Kaizendo> for Authors, Copyright and License information.

=cut
