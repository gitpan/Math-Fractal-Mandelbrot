#!/usr/bin/perl -w

use Test::More tests => 4;
use strict;

BEGIN
  {
  $| = 1;
  unshift @INC, '../blib/lib';
  unshift @INC, '../blib/arch';
  unshift @INC, '.';
  chdir 't' if -d 't';
  use_ok ('Math::Fractal::Mandelbrot');
  }

my $c = 'Math::Fractal::Mandelbrot';

can_ok ($c, qw/ 
  point
  /);

is ($c->point (0,0, 100, 5), 0, '0,0 is in the set');
is ($c->point (-2,-2, 100, 5), 1, '0,0 is not in the set');

