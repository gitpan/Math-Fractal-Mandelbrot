###############################################################################
# calculate points/stripes in the mandelbrot fractal efficient

package Math::Fractal::Mandelbrot;

use 5.005;
use strict;
# use warnings; # dont use warnings for older Perls

require Exporter;
require DynaLoader;

use vars qw/@ISA $VERSION @EXPORT_OK/;
@ISA = qw(Exporter DynaLoader);

@EXPORT_OK = qw/point/;

$VERSION = '0.01';

bootstrap Math::Fractal::Mandelbrot $VERSION;

# no Perl code, it is all in the XS code

1;
__END__

=pod

=head1 NAME

Math::Fractal::Mandelbrot - Calculate points in the mandelbrot fractal

=head1 SYNOPSIS

Calculates points, horizontal/vertical stripes or rectangular areas of the
famous Mandelbrot fractal.

=head1 LICENSE
 
This program is free software; you may redistribute it and/or modify it under
the same terms as Perl itself. 

=head1 AUTHOR

Tels <http://bloodgate.com/> in 2003.

=head1 SEE ALSO

L<Math::Fractal::DLA> by Wolfgang Gruber.

=cut
