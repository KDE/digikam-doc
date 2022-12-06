.. metadata-placeholder

   :authors: - Simon Eugster <simon.eu@gmail.com>
             - Eugen Mohr

   :license: Creative Commons License SA 4.0

.. Following text is a copy of: https://web.archive.org/web/20160319081747/https://kdenlive.org/users/granjow/introducing-color-scopes-histogram

.. _histogram_working:

How the Histogram works
=======================

*Submitted by Granjow on Mon, 08/30/2010 - 23:10*

When the Histogram receives an updated image from one of the monitors, each of these pixels consist of a Red, Green, and Blue component. Each of these values lies within a range of 0 and 255, which are the numbers you can represent with one Byte. 0 means that the component is not shining at all (i.e. it is black), 255 means that it is shining as bright as possible.

The Histogram is merely statistics; it shows how often a component of a certain brightness occurs. So what the Histogram then does is actually quite simple:

1. Take the first pixel
2. Look at the Red value (= x) of the pixel. Increase the height of the bar at position x of the histogram by 1. Example: If the red value is 0, increase the height of the bar at position 0 (that is at the very left) of the histogram by 1. If it is 42, increase bar 42 by 1. And so on.
3. Repeat the previous step with Green and Blue.
4. Look at R, G, and B together and calculate the Luma value. Luma is the perceived Luminance of this pixel. See further below how it is calculated (if you are interested).
5. Repeat these steps for all other pixels on the image.

What the Histogram shows
------------------------

The Histogram only shows the distribution of the luminance of the selected components – nothing more, nothing less. Also when looking at the RGB channels separately, instead of at the calculated Luma component only, you cannot really guess the colors in the image.

Really? Yes. Take a look at these two images.

.. image:: /images/kdenlive-colorscopes-histogram-gradient-bw.png
   :alt: kdenlive-colorscopes-histogram-gradient-bw

.. image:: /images/kdenlive-colorscopes-histogram-gradient-color.png
   :alt: kdenlive-colorscopes-histogram-gradient-color

Exactly the same Histogram. Totally different colors. (What you can do is guessing the color tone; see below.) But what is the histogram good for now?

To answer this question, I would like to point an article from the «Cambridge in Colour»: `Understanding Digital Camera Histograms: Tones and Contrast <https://www.cambridgeincolour.com/tutorials/histograms1.htm>`_ and the second part `Luminance & Color <https://www.cambridgeincolour.com/tutorials/histograms2.htm>`_. Although written for digital photo cameras, exactly the same applies for digital video cameras. Both articles are easy to read and understand (and may also be of interest for experienced users).

Histogram example: Candlelight
------------------------------

.. image:: /images/kdenlive-colorscopes-histogram-candlelight.png
   :alt: kdenlive-colorscopes-histogram-candlelight

Two special things about this histogram.

- Most pixels are dark, according to the Luma component (white). Though there is no total black: Notice that the Luma component shows «min: 8». Nevertheless, the blue component does reach 0. This means that the darkest pixels are still slightly orange and didn't lose all color information yet. 

- There is quite some clipping. A lot of R values are sticking at the very right, at 255. Having a peak at 255 usually means that we lost information because some regions were too bright for the camera sensor with the current sensitivity settings. This could have been solved by lowering the sensitivity, but then the book and nearly everything else would be black. In this case the candles cause the clipping. (Not too bad here, because the lost detail isn't important for the image.)

The RGB components also show very well that the shadows are not neutral grey but orange, otherwise the color heaps on the left would, as in the gradient histogram above, have their center at the same position. There isn’t a lot to correct here, what could be done is raising the shadows with a Curves effect, but this is a matter of taste and the intended mood for the final movie.

.. image:: /images/kdenlive-colorscopes-histogram-candlelight-shadows_raised.png
   :alt: kdenlive-colorscopes-histogram-candlelight-shadows_raised

Histogram example: Underexposed ABC
-----------------------------------

.. image:: /images/kdenlive-colorscopes-histogram-abc.png
   :alt: kdenlive-colorscopes-histogram-abc

We immediately notice two things:

- The RGB peaks are at the same position, near the middle. The white wall is the brightest part, so this peaks are from the white wall. As they are not shifted, the white balance should be okay (the image confirms that). Note that the Histogram is not very accurate for white balance. Later I will introduce a much more accurate scope.
 
- The image is too dark. The brightest component, red, only reaches a value of 170. The white wall is actually grey.

Monitoring correct exposure is the Histogram's strength! The exposure can be corrected with curves as well, but this time I will use the *Levels effect*.

.. image:: /images/kdenlive-colorscopes-histogram-abc-exposure_corrected.png
   :alt: kdenlive-colorscopes-histogram-abc-exposure_corrected

I've lowered the Input white level of the Luma channel until one of the RGB components reached 255. Lowering the input white level further would cause clipping on the wall and lost image information. (Which may be desired in certain circumstances!)

This process is called *Stretching* of the tonal range.

Histogram options
-----------------

In kdenlive 0.7.8 the histogram can be adjusted as follows:

- Components – They can be enabled individually. For example, you might only want to see the Luma component, or you want to hide the Sum display.
  
   - Y or Luma is the best known Histogram. Every digital camera shows it, digikam, GIMP, etc. know it. See below how it is calculated.
   
   - Sum is basically a quick overview over the individual RGB channels. If it shows e.g. 5 as the minimum value, you know that none of the RGB components goes lower than 5.
   
   - RGB show the Histogram for the individual channels.

- Unscaled (Context menu) – Does not scale the width of the histogram (unless the widget size is smaller). Just a goodie if you want to have it 256 px wide.

- Luma mode (Context menu) – This option defines how the Luma value of a pixel is calculated. Two options are available:
   
   - Rec. 601 uses the formula ``Y' = 0.299 R' + 0.587 G' + 0.114 B'``
   
   - Rec. 709 uses ``Y' = 0.2126 R' + 0.7152 G' + 0.0722 B'``

Most of the time you will want to use Rec. 709 which is, as far as I know, mostly used in digital video today. 

Sample files
------------

The sample files used above can be downloaded here:

- `Histogram-bw.png <http://granjow.net/uploads/kdenlive/samples/Histogram-bw.png>`_

- `Histogram-col.png <http://granjow.net/uploads/kdenlive/samples/Histogram-col.png>`_
    
- `abc-underexposed.avi <http://granjow.net/uploads/kdenlive/samples/abc-underexposed.avi>`_ (26 MB; 720/24p)
    
- `candlelight.avi <http://granjow.net/uploads/kdenlive/samples/candlelight.avi>`_ (14 MB; 720/24p)

Summary
-------

.. image:: /images/switzerland.png
   :alt: switzerland
   :align: right

The Histogram is a great tool for exposure correction, together with the Curves and the Levels effects. It helps to avoid clipping (burned out areas) and crushed blacks (the opposite) when applying effects.

Thanks for reading! Continue with the :ref:`Waveform and the RGB Parade <waveform_and_RGB_parade>`.

Please drop your comments below.

Simon A. Eugster (Granjow)
