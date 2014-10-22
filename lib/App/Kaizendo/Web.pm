package App::Kaizendo::Web;

use 5.008005;
use Moose;
use namespace::autoclean;
use Catalyst::Runtime 5.80;

# Set flags and add plugins for the application
#
#         -Debug: activates the debug mode for very useful log messages
#   ConfigLoader: will load the configuration from a Config::General file in the
#                 application's home directory
# Static::Simple: will serve static files from the application's root
#                 directory

use Catalyst qw/
  ConfigLoader
  +CatalystX::Debug::RequestHeaders
  Static::Simple
  /;

#    -Debug

extends 'Catalyst';

# Configure the application.
#
# Note that settings in kaizendo.conf (or other external
# configuration file that you set up manually) take precedence
# over this when using ConfigLoader. Thus configuration
# details given here can function as a default configuration,
# with an external configuration file acting as an override for
# local deployment.

__PACKAGE__->config(
    name => 'Kaizendo',

    # Disable deprecated behavior needed by old applications
    disable_component_resolution_regex_fallback => 1,
);

# Start the application
__PACKAGE__->setup();

=head1 NAME

Kaizendo - A tool for collaborative authoring of polyscopic documents

=head1 SYNOPSIS

    script/kaizendo_server.pl

=head1 DESCRIPTION

Kaizendo is a framework for discussing and improving texts and their
alternatives.

=head1 SEE ALSO

L<Kaizendo::Controller::Root>, L<Catalyst>

=head1 AUTHOR

Salve J. Nilsen <sjn@kaizendo.org>
Tomas Doran <bobtfish@bobtfish.net>

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the terms of the GNU Affero General Public License v3, AGPLv3.

See L<http://opensource.org/licenses/agpl-v3.html> for details.

=cut

1;
