use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    'NAME'		=> 'Math::Fractal::Mandelbrot',
    'VERSION_FROM'	=> 'lib/Math/Fractal/Mandelbrot.pm', # finds $VERSION
    'PREREQ_PM'		=> {
			   }, 
    'LIBS'		=> [''], # e.g., '-lm'
    'DEFINE'		=> '', # e.g., '-DHAVE_SOMETHING'
    'INC'		=> '', # e.g., '-I/usr/include/other'
);
