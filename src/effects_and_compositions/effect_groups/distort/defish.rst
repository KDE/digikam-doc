.. metadata-placeholder

   :authors: - Yuri Chornoivan
             - Ttguy (https://userbase.kde.org/User:Ttguy)
             - Marko (https://userbase.kde.org/User:Marko)

   :license: Creative Commons License SA 4.0

.. _defish:

Defish
======

.. contents::

This effect can transform footage shot with a fisheye lens, to look like it was shot with a rectilinear lens, and vice versa. It can also be used to straighten the video that was shot with one of these wide angle converters, which are only slightly curvy, or with a semi-fisheye camera, like the GoPro Hero.

.. image:: /images/Kdenlive_Defish.png

PARAMETERS
----------

"Amount"

Controls the amount of (de)distortion applied to the video. It controls the ratio of fisheye focal length to image half diagonal, but
in an nonlinear inverse way, to make the control more "comfortable". It can be adjusted beyond "reasonable" values (which differ between the mapping function types), to produce some looney effects. When exploring this range, and the image disappears, check the scaling, could be that the image became too big or too small to see. For some unreasonable values the image might indeed disappear, when there are math overflows or imaginary results... (types 1 and 2 are more prone to image vanishing). Anyway, when working in the "special effect" range, it is always worth to try manual scaling. If the video contains zooming through a curvy wide angle adaptor, the needed amount will vary. In this case use keyframing.

"DeFish"

If checked, the transform direction is from fisheye to rectilinear, when not checked, it is rectilinear to fisheye.

"Type"

Selects the fisheye angular mapping function used, among four possibilities:

* equidistant
* orthographic
* equiarea
* stereographic

Wikipedia has a nice article about these.

"Scaling"

Select among three auto scaling options and manual scale:

* scale to fill
* keep center scale
* scale to fit
* manual scale

"Fill" means that no empty borders will be left, but some of the input image will be cropped. "Fit" means that no part of the input
image will be cropped, but there will be blank areas at the borders.

"Manual Scale"

When "Scaling" is set to manual scale, this control directly affects the image scale, from 1/100 to 100X size. Only has effect when
"Scaling" is set to manual!

"Interpolator"

Selects among seven different interpolators. This allows one to make a quality/speed tradeoff. The interpolators are ordered from fast, low quality to (very) slow high quality. The spline interpolating polynomials are from Helmut Dersch. For realtime use, option 0 is the fastest, in fact it is equal to no interpolation. In most cases bilinear should be good enough, and on a decent machine should still run in real time. Beyond bicubic, the quality gain is marginal for a single resampling. Lanczos takes an eternity!

* Nearest neighbor
* Bilinear
* Bicubic smooth
* Bicubic sharp
* Spline 4x4
* Spline 6x6
* Lanczos 16x16

"Aspect Type"

Selects among four pixel aspect ratio presets, and manual: To get the math right, Defish0r needs to know the pixel aspect
ratio.

* Square pixels
* PAL DV	1.067
* NTSC DV	0.889
* HDV	1.333
* manual variable

"Manual aspect"

When "Aspect Type" is set to option manual variable, this control directly affects the pixel aspect ratio, from 0.5 to 2. Only has effect when "Aspect Type" is set to manual!

SOME APPLICATION NOTES
----------------------

1. Tweaking the parameters for best defish

Take a shot of something like a brick wall or bathroom tiles, that has a lot of horizontal and vertical straight lines. Be careful to keep the optical axis as perpendicular as possible to the wall (=keep a maximally symmetrical image in the viewfinder). Use this
image to tweak the parameters, primarily amount, type and aspect.

2. Some examples of Defish0r abuse

These were tried with PAL DV. These examples work best, when there is some interesting action near the center of the image.

For a kind of roundish kaleidoscope, try this:

Amount=775,
Defish = OFF,
Type = equidistant,
Scaling = manual scale,
Manual Scale = 300...400

Another crazy distortion:

Amount = 921,
Defish = OFF,
Type = stereographic,
Scaling = manual scale,
Manual Scale = 191

For an effect, reminiscent of some scenes from the "2001 Space Odyssey" try this:

Amount = 900,
Defish = ON,
Type = stereographic,
Scaling = fill

