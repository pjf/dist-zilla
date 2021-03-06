package Dist::Zilla::Plugin::ShareDir;
# ABSTRACT: install a directory's contents as "ShareDir" content
use Moose;

use Moose::Autobox;

=head1 SYNOPSIS

In your F<dist.ini>:

  [ShareDir]

=cut

has dir => (
  is   => 'ro',
  isa  => 'Str',
  default => 'share',
);

with 'Dist::Zilla::Role::ShareDir';
__PACKAGE__->meta->make_immutable;
no Moose;
1;
