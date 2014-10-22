package App::Kaizendo::Datastore::Comment;
use App::Kaizendo::Moose;

class_type 'App::Kaizendo::Datastore::Project';
has project => ( is => 'ro', required => 1, isa => 'App::Kaizendo::Datastore::Project' );
has text => ( is => 'ro', required => 1 );

__PACKAGE__->meta->make_immutable;
1;

=head1 AUTHORS, COPYRIGHT AND LICENSE

See L<App::Kaizendo> for Authors, Copyright and License information.

=cut
