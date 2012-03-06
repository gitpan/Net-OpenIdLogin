package Net::OpenIdLogin::Types;
{
  $Net::OpenIdLogin::Types::VERSION = '0.1.0';
}
# ABSTRACT: Types for Net-OpenIdLogin.

use Moose::Util::TypeConstraints;
use Net::OpenIdLogin::Extension;

subtype 'Extension_List',
    as 'HashRef[Net::OpenIdLogin::Extension]';

coerce 'Extension_List',
    from 'ArrayRef',
    via {my $ret = {map {($_->{uri} => Net::OpenIdLogin::Extension->new($_))} @$_};};

no Moose::Util::TypeConstraints;
1;



=pod

=head1 NAME

Net::OpenIdLogin::Types - Types for Net-OpenIdLogin.

=head1 VERSION

version 0.1.0

=head1 AUTHOR

Holger Eiboeck <realholgi@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2012 by Holger Eiboeck.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut


__END__

