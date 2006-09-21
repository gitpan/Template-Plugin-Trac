package Template::Plugin::Trac;

use strict;
use warnings;
use Text::Trac;
use base qw(Template::Plugin::Filter);

our $VERSION = '1.000';

sub init {
    my $self = shift;
    $self->{'_DYNAMIC'} = 1;
    $self->install_filter( $self->{'_ARGS'}->[0] || 'trac' );
    return $self;
}

sub filter {
    my ($self, $text, $args, $config) = @_;
    my $parser = Text::Trac->new( %{$config} );
    return $parser->parse( $text );
}

1;

=head1 NAME

Template::Plugin::TextTrac - TT filter for Text::Trac

=head1 SYNOPSIS

  [% USE Trac %]
  ...
  [% FILTER trac %]
    = Heading One =
    == Heading Two ==
  [% END %]
  ...
  [% text | trac %]

=head1 DESCRIPTION

C<Template::Plugin::TextTrac> is a plugin for TT, which formats your text using
Trac's WikiFormatting style.

=head1 AUTHOR

Graham TerMarsch <cpan@howlingfrog.com>

=head1 COPYRIGHT

Copyright (C) 2006, Graham TerMarsch.  All rights reserved.

This is free software; you can redistribute it and/or modify it under the same
terms as Perl itself.

=head1 SEE ALSO

L<Text::Trac>,
L<Template::Plugin::Filter>.

=cut
