#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

MODULE = Math::Fractal::Mandelbrot	PACKAGE = Math::Fractal::Mandelbrot
PROTOTYPES: ENABLE

##############################################################################
# point() - calculate fractal at this point
# input: X and Y   coordinates of the point
#        max_iter  max iterations to do
#        limit     stop calculation when this limit is reached

unsigned int
point(class, x,y,max_iter,limit)
	SV*	class
	double	x
	double	y
	unsigned int max_iter
	double	limit
  INIT:
    double		za,zb,za1;
    double		za2,zb2;

  CODE:
    za = 0;
    zb = 0;
    za2 = 0;
    zb2 = 0;
    RETVAL = 0;
    while (RETVAL++ < max_iter)
      {
      za1 = za2 - zb2 + x;
      zb = 2 * za * zb + y;
      za = za1;
      za2 = za * za; zb2 = zb * zb; 
      if (za2 + zb2 > limit)
        {
        break;
        }
      }
    if (RETVAL >= max_iter)
      {
      RETVAL = 0;
      }
  OUTPUT:
    RETVAL


