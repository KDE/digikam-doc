.. metadata-placeholder

   :authors: - Simon Eugster <simon.eu@gmail.com>
             - Eugen Mohr

   :license: Creative Commons License SA 4.0

.. Following text is a copy of: https://web.archive.org/web/20160319101730/https://kdenlive.org/users/granjow/shooting-your-dslr

.. _shooting_with_your_DSLR:

Shooting with your DSLR
=======================

*Submitted by Granjow on Sun, 11/14/2010 - 21:27*

This article is going to give some tips regarding shooting Video with your DSLR and editing it in kdenlive afterwards.

Camera hardware
---------------

Lens
~~~~

|pic1|  |pic2|

.. |pic1| image:: /images/nikon-50mm.jpg
   :alt: nikon-50mm
   :width: 30%

.. |pic2| image:: /images/nikon-35mm.jpg
   :alt: nikon-35mm
   :width: 30%


Generally Primes are preferred over zooms in video. (Some people, like me, prefer it over zooms as well for photography — but this is a matter of taste and of how you work.) Why that? A psychological reason is that eyes (at least mine) cannot zoom either, so zooming is hardly ever used in video. The technical reason is that Primes are cheaper to build whilst offering better quality: Better sharpness, bigger aperture (for limiting the Depth of Field). Opening the aperture gives you a very nice look. (Please also read ArtInvent's comment on this.)
    
Examples for very popular primes are the Nikon 50mm f/1.8D and the Canon 50mm f/1.8 II.
    
If you own such a lens, just don't forget that you should not always shoot at f/1.8. ;)

Filter
~~~~~~

.. image:: /images/nd-filter.jpg
   :alt: nd-filter
   :align: right
   :width: 30%

Directly related to the previous point about lenses. Shooting with an open aperture works well as long as it is dark. In bright sunlight it will fail because there is too much light falling on the sensor. Furthermore you are forced to use a high shutter speed which makes movements look jerky; Most of the time you will want to have some kind of motion blur because it looks more natural to our eyes.
    
If you ever tried to follow a bird or another animal with your eyes in dawn, you will know that our eyes do support motion blur.
    
So the trick is to remove some light with a filter called Neutral Density Filter. You can see one on the right. (The piece of kneaded eraser is not part of the filter.)

Shooting
--------

Aperture, Shutter, and ISO
~~~~~~~~~~~~~~~~~~~~~~~~~~

|pic3|  |pic4|

.. |pic3| image:: /images/motion-low.jpg
   :alt: motion-low
   :width: 30%

.. |pic4| image:: /images/motion-high.jpg
   :alt: motion-high
   :width: 30%

The same as for shooting stills. Really? Not quite. As written above you will usually want to have the shutter speed lower than for photography in order to get motion blur — around 1/50 s. (This is just a rule of thumb, as all rules in video are; made to be broken.)
    
Also, some additional problems may arise due to the sensor being read out line-wise. One I would like to mention are Rolling Shutter effects. Longer exposure can, but need not, prevent such problems. It does if you are shooting with fluorescent lamps. Shooting at high shutter speed shows wave patterns from top to bottom of the screen, lowering it hides them if you hit the correct shutter speed.
    
On the right: Two images I shot with my Nikon D90, the left one at lowest ISO possible, the right one at highest possible.

Exposure
~~~~~~~~

|pic5|  |pic6|

.. |pic5| image:: /images/low-ISO.jpg
   :alt: low-ISO
   :width: 30%

.. |pic6| image:: /images/high-ISO.jpg
   :alt: high-ISO
   :width: 30%

The image should be exposed as bright as possible (without too much clipping!) if enough light is available. If you don't need to boos the brightness too much in post-production, you can avoid some noise in dark areas. 

White Balance
~~~~~~~~~~~~~

|pic7|  |pic8|

.. |pic7| image:: /images/whitebalance-post.jpg
   :alt: whitebalance-post
   :width: 30%

.. |pic8| image:: /images/whitebalance-pre.jpg
   :alt: whitebalance-pre
   :width: 30%

The White Balance should be set as accurate as possible because DSLRs only support 8 bit per color channel (see also my article about the :ref:`Waveform Monitor <waveform_and_RGB_parade>`). If done wrong, much of the color information is lost.
    
DSLRs also offer different camera profiles with different Contrast/Saturation/etc. settings. Usually low saturation is preferred over high saturation — especially because raising the saturation can be done in post, and because high in-camera saturation settings can lead to color clipping.
    
In the example images on the right you can see the difference. The left one looked blueish due to wrong white balance and was corrected in post; much of the tonal range of the blue colors has been lost. The right one has been shot with proper white balance.

Autofocus
~~~~~~~~~

The in-camera autofocus may be fast enough to focus, but it will fail in the most important moment. It is useful for getting the initial focus point, but while shooting it should stay switched off.

Camera specific tips
--------------------

Nikon D90
~~~~~~~~~

The Nikon D90 was the first DSLR offering video. 720/24p (AVI container).

D90 videos at 720p are scaled awfully. That's why you can see stair-stepping in sharp, skew lines. If this becomes perturbing for a clip, you can apply the «Nikon D90 Stairstepping fix» frei0r filter. Written (but not invented) by me :) See our `Nikon D90 page <https://web.archive.org/web/20160403024219/https://kdenlive.org/video-editor/nikon-d90>`_ for an example of how stairstepping looks like (before and after correction).

There is an extensive overview over the D90 video function at dvxuser.com: `Understanding and Optimizing the Nikon D90 D-Movie Mode Image <https://web.archive.org/web/20160208161124/http://www.dvxuser.com/V6/showthread.php?146661-Understanding-and-Optimizing-the-Nikon-D90-D-Movie-Mode-Image>`_

Canon EOS 550D/Ti2 (and Co.)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

These cameras shoot 1080p (H.264 encoded, MOV container) — but record video with a height of 1088 pixels. Prior to MLT 0.5.6 you have/had to crop the additional 8 pixels with a crop effect from the top or the bottom of the video, newer versions of MLT do this automatically.

DSLR related links
------------------

One can find tons of information about shooting in the internet. Some helpful links listed below.

- DSLR HD Video Tips: Shooting Basics — Introduction to DSLR video shooting

- `Philip Bloom Gives Photographers A Basic Video Shooting Tip <https://philipbloom.net/blog/shooting-video-with-a-dslr/>`_ — How to get from photo to video

- `7 Tips To Get Better Video from a DSLR Camera <https://www.sportsshooter.com/news/2376>`_ — Tips on shooting (not tech only)

- `Hurlbut Visuals Camera Protocol <https://vimeo.com/groups/28231/videos/15635719>`_ — Professional shooting workflow

- `Pro DSLR Video Tips from David Harry Stewart <https://www.popphoto.com/how-to/2010/07/pro-dslr-video-tips-david-harry-stewart/>`_ — Interview containing several tips

- `Tips on Shooting Video With a D.S.L.R. <https://webcache.googleusercontent.com/search?q=cache:3CJdJI0nNW4J:https://gadgetwise.blogs.nytimes.com/2010/04/15/tips-on-shooting-video-with-a-d-s-l-r/+&cd=1&hl=de&ct=clnk&gl=ch>`_ — Various tips

- `How To Guide For Shooting HD Video With A DSLR Camera <https://tubularinsights.com/hd-video-dslr-camera/>`_ — Various tips

Summary
-------

Summary? There is no such thing. You need to read everything, really :)

.. image:: /images/switzerland.png
   :alt: switzerland

Have fun!

Please drop your comments below.

Simon A. Eugster (Granjow)