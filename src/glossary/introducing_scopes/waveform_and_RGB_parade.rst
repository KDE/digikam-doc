.. metadata-placeholder

   :authors: - Simon Eugster <simon.eu@gmail.com>
             - Eugen Mohr

   :license: Creative Commons License SA 4.0

.. Following text is a copy of: https://web.archive.org/web/20160319050009/http://kdenlive.org/users/granjow/introducing-color-scopes-waveform-and-rgb-parade

.. _waveform_and_RGB_parade:

The Waveform and The RGB Parade 
===============================

*Submitted by Granjow on Tue, 09/14/2010 - 15:01*

In my previous post I've :ref:`introduced the Histogram <histogram_working>` that will be available in kdenlive 0.7.8.

Next in the list of the Color Scopes I added are two closely related scopes: **Waveform** and **RGB Parade**. Both of them do the same, Waveform for Luma, RGB Parade for the RGB components. Therefore I will not always explicitly point out that properties hold for both scopes and speak of Waveform only.

.. image:: /images/kdenlive-colorscopes-waveform.png
   :alt: kdenlive-colorscopes-waveform


How the Waveform works
----------------------

The Waveform is kind of a 3D Histogram.

Yeah.

That's nothing to do with the fact that the above image looks kind of 3D. So where are the three dimensions?

1. The most obvious dimension is Luma; Dark pixels are at the bottom, bright ones are at the top. So if all pixels in the Waveform stick at the very top, your video is most likely white.

2. The second dimension is the horizontal position of the pixel in the original image. That’s one of the things that makes the Waveform cool. Pixels in the first column of your input video will also be painted in the first column of the Waveform. This goes on until the scope reaches the last column of the input video, which will be painted in the last column of the Waveform.

3. The third dimension is the brightness of a pixel in the Waveform. The brighter a point there, the more pixels in this column share this specific brightness value.

Waveform example: Sunset
------------------------

.. image:: /images/kdenlive-colorscopes-waveform-sunset.png
   :alt: kkdenlive-colorscopes-waveform-sunset

The Waveform looks quite impressive here. But what can we learn about the image?

- In the left third we've got some clipping. There are some bright spots (which are the sun and the clouds).

- The last third of the image is dark, but not black (no crushing). This means that there is still a chance for color information. The image confirms that; The tree does not look neutral but green with an orange touch. Or the other way round?

That is where the RGB parade drops in now.

.. image:: /images/kdenlive-colorscopes-rgbparade-sunset.png
   :alt: kdenlive-colorscopes-rgbparade-sunset

What we see is very slight crushing for blue on the tree, and more or less equal parts of red and green as well. So if you thought the tree were green, your brain fooled you. It is not. (Actually there is no green at all in the image.) Also, blue nearly doesn't clip at all, even in the sun. So it is still a little bit orange, which is great.

Now, didn't the Histogram show clipping and crushing as well? Yes, it did. But it did not show where. That is a big benefit. As in some cases, if you see that there is some clipping on a light bulb, you perhaps don't mind increasing the overall brightness of the image. It does increase clipping as seen on the Histogram, but the Waveform shows that only the light bulb is clipped a little more, which you can afford in our imaginary case.

RGB Parade example: Light Bulb
------------------------------

Wait … imaginary, I said? Actually I do have a short clip with light bulbs. Which is quite interesting, not only due to the wrong white balance.

.. image:: /images/kdenlive-colorscopes-rgbparade-fluorescent.png
   :alt: kdenlive-colorscopes-rgbparade-fluorescent

The RGB Parade reveals two things at first glance. You will at least recognize the first one as well.

- The fluorescent lamps are clipped. All channels are at 255 there, so they are totally white.

- The white balance is wrong. This can be told for sure. The ceiling is white in reality. And in the very left quarter of the image there only consists of the ceiling. This part should look equal in the RGB Parade, but when e.g. comparing Red to Blue, you see that Red starts at 19 whileas Blue starts at 0. Furthermore, the Blue channel is much more compressed. Its height in this area is 25, whileas the height of the Red channel is about 50.

To achieve proper white balance here, we make use of a new effect called SOP/Sat (if you want to know more about it: It implements the `ASC Color Decision List <https://en.wikipedia.org/wiki/ASC_CDL>`_. More to read also in the `source code comments <https://github.com/dyne/frei0r/blob/master/src/filter/sopsat/sopsat.cpp>`_ of the effect.) Curves would work as well (actually curves could do everything), but let’s use a new effect here.

The first thing to decide is how bright the darkest spot should be. This can be controlled with the Offset parameter. Reference is again the left part of the Parades, the soon-to-be white ceiling. You can use your mouse to make the Waveform or RGB Parade draw a horizontal line and display the value there. I lifted all channels to 48 in this example:

.. image:: /images/kdenlive-colorscopes-rgbparade-fluorescent-offset.png
   :alt: kdenlive-colorscopes-rgbparade-fluorescent-offset

Second step is Stretching the channels. This is done with the Slope sliders. The goal is again to find a neutral spot in the RGB Parade and use it as reference. We could again use the ceiling on the left, but after some testing I found out that the little wave in the middle of the scope works as well. Its advantage is that it is slightly brighter than the ceiling, allowing to correct the color cast more precisely.

.. image:: /images/kdenlive-colorscopes-rgbparade-fluorescent-slope.png
   :alt: kdenlive-colorscopes-rgbparade-fluorescent-slope

And voilà, exposure and white balance are corrected.

When taking a look at the full-sized image (or when trying it yourself with the sample clip available for download at the end of this article) you will notice color waves in the image. This is the result of the stretching; We have blown up the ceiling on the left from 25 px height to nearly 100 px. If the clip had been exposured and white balanced correctly when shooting, we would have 100 distinct values there, but now there are only 25 different blue levels, causing these steps. Also in the histogram the image looks torn apart. (Another reason might be the high compression of the Nikon D90 clips.) This effect is called `Posterization <https://www.cambridgeincolour.com/tutorials/posterization.htm>`_.

This is one of the reasons why more expensive cameras (and with that I mean *really* expensive ones, like the `RED One <https://en.wikipedia.org/wiki/Red_Digital_Cinema>`_, to name an extreme example) record videos in higher `bit depth <https://www.cambridgeincolour.com/tutorials/bit-depth.htm>`_. Perhaps all clips you'll ever encounter only store 8 bits per channel, so there are 2 :sup:`8` = 256 possible values for each channel. Having for example 10 bits per channel would already result in 2 :sup:`10` = 1024 possible values. This would already have solved our problem.

But before you buy a RED one now – kdenlive does not support more than 8 bit yet.

Where you already can play with more than 8 bits per channel are `RAW <https://www.cambridgeincolour.com/tutorials/RAW-file-format.htm>`_ images from DSLR cameras. Supported by `digikam <https://www.digikam.org/>`_, `RawTherapee <http://www.rawtherapee.com/>`_, and several more.

Waveform example: Leaf with hidden clipping
-------------------------------------------

.. image:: /images/kdenlive-colorscopes-waveform-leaf.png
   :alt: kdenlive-colorscopes-waveform-leaf

Looks perfect. Good exposure (says the eye and the Waveform), beautiful colors.

Nevertheless, there is some clipping. It is just hidden by the Luma calculation: For Luma, only pixels that are totally white are at the top of the Waveform.

.. image:: /images/kdenlive-colorscopes-rgbparade-leaf.png
   :alt: kdenlive-colorscopes-rgbparade-leaf

Although the green leaf looks much brighter than the red tip, it is the Red channel which clips at the tips. The thing is that our eyes are most sensitive to Green, less to Red, and even less to Blue. That is also the reason why the beam of a green laser is visible in the night sky, but a red one is not (unless you've got a really strong one.)

Waveform example: High Key clip
-------------------------------

.. image:: /images/kdenlive-colorscopes-waveform-highkey.png
   :alt: kdenlive-colorscopes-waveform-highkey

This is a classical `High Key <https://www.diyphotography.net/lighting-high-key-and-low-key/>`_ shot. Bright subject (but not clipped yet), white background.

Waveform options
----------------

- *Paint Mode* – Changes the paint mode for the Waveform. Usually changes its brightness as well. Green also highlights pixels with values 0 or 255.

- *Luma mode* (Context menu) – As for the Histogram you can choose how to calculate Luma (Rec.601 or Rec.709).

.. image:: /images/kdenlive-colorscopes-waveform-green.png
   :alt: kdenlive-colorscopes-waveform-green

Interesting detail: When color grading, some colorists prefer scopes with neutral colors, and basically with neutral everything. Just greyscale, except for the video itself. Why that? Quick answer: `Afterimages <https://en.wikipedia.org/wiki/Afterimage>`_. If you look at a green surface and then immediately color grade an image by eye, there will be too much green in it.

RGB Parade options
------------------

- *Paint Mode* – Changes the paint mode; see above.

- *Draw Axis* (Context menu) – Draws an axis with 10 steps

- *Gradient reference line* (Context menu) – Draws a line from bottom left to top right. This is useful when testing color correction on a linear gradient clip (Black on the left, White on the right), to observe changes in each channels.

To explain the last point a little more in detail: A black/white gradient draws a line from the bottom left to top right on the Waveform. When changing the colors, e.g. with the SOP/Sat filter or with Curves, the line will change. (Attention, effects working on the saturation will not have any effect on a grayscale gradient!)

.. image:: /images/kdenlive-colorscopes-waveform-gradient.png
   :alt: kdenlive-colorscopes-waveform-gradient

In this gradient above I have applied a SOP/Sat effect to give the blacks a blueish touch and the mids and highs a warm touch. You can play around with the gradient file and some color correction effects on the gradient file as well. What the above is good for will be in the next part.

Clip Sources
------------

- `windy-sunset.avi <http://granjow.net/uploads/kdenlive/samples/windy-sunset.avi>`_ (22 MB; 720/24p)

- `fluorescent-wrong-whitebalance.avi <http://granjow.net/uploads/kdenlive/samples/fluorescent-wrong-whitebalance.avi>`_ (22 MB; 720/24p)

- `red-leaf-tips.avi <http://granjow.net/uploads/kdenlive/samples/red-leaf-tips.avi>`_ (13.5 MB; 720/24p)

- `highkey.avi <http://granjow.net/uploads/kdenlive/samples/highkey.avi>`_ (13 MB; 720/24p)

- `Gradient_1080.png <http://granjow.net/uploads/kdenlive/samples/Gradient_1080.png>`_ (10 kB, 1920×1080)

Summary
-------

.. image:: /images/switzerland.png
   :alt: switzerland
   :align: right

Waveform and RGB Parade are mighty scopes. Especially the RGB Parade. Correcting the exposure is easy, with these scopes you can always keep track of the levels of each color component. It is also possible to do white balance by adjusting blacks first and whites afterwards because the horizontal axis in the Scopes correspond to the horizontal axis in the video which allows to detect spots that should be neutral.

Thanks for reading!
Please drop your comments below.

Simon A. Eugster (Granjow)

Comments
--------

**yellow**, Wed, 09/15/2010 - 16:40

Granjow, great work and write up. I see you use the ASC colour corrector. Are you considering a Lift Gamma Gain 3 way? or is this an option already, such as found in Colorista II?

**Granjow**, Thu, 09/16/2010 - 08:00

Thank you! Actually a 3-way color corrector was the initial goal, and when I asked Stu Maschwitz (the author of colorista) he told me about the ASC CDL. So I implemented the SOP/Sat effect first to play around with the possibilities I had using the Color Decision List only. And noticed that I couldn't just implement a 3-way now because fine-tuning the values would require at least a tiny bit of experience. Because `everyone is doing it differently <https://digitalfilms.wordpress.com/2010/03/13/>`_ anyways ;)

You said Lift/Gain/Gamma. This is just another expression for Slope/Offset/Power?

**yellow**, Thu, 09/16/2010 - 14:49

I believe LGG & SOP are different formulas and therefore assume apply the 'corrections' differently. But as you say so many variations of implementation anyway, even choosing one or the other.
