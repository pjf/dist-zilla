package Dist::Zilla::Role::ExecFiles;
use Moose::Role;
with 'Dist::Zilla::Role::FileFinder';

requires 'dir';

sub find_files {
  my ($self) = @_;

  my $dir = $self->dir;
  my $files = $self->zilla->files->grep(sub { index($_->name, "$dir/") == 0 });
}

1;
