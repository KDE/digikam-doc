.. metadata-placeholder

   :authors: - Claus Christensen
             - Yuri Chornoivan
             - Ttguy (https://userbase.kde.org/User:Ttguy)
             - Bushuev (https://userbase.kde.org/User:Bushuev)
             - Jack (https://userbase.kde.org/User:Jack)

   :license: Creative Commons License SA 4.0

.. _rgb_parade:

RGB Parade
==========

.. contents::


Displays a histogram of R, G and B components of the video data.  This data is a 3D histogram. 

The horizontal axis represents the horizontal axis in the video frame. The vertical axis is the pixel luminance from 0 to 255. The brightness of the point on the graph represents the count of the number of pixels with this luminance in this column of pixels in the video frame.

In the sample screenshot below of a green screen with a shadow on it and with a right edge that reveals a white wall, you can see how the scope works. The circled regions labeled 1 are on the right side representing the fact that there are several columns of pixels that are quite bright whitish/gray. So these regions are higher up on the Y axis. 

The regions labeled 2 are in the middle of the scope and the dip in the graph there shows the shadow on the screen at this point. The average luminance of the pixels in these columns is lower.


.. image:: /images/kdenlive_Rgb_parade5.png
   :align: left
   :alt: RGB parade


For more information, see :ref:`Granjow's blog <waveform_and_RGB_parade>` on the waveform and RGB Parade scopes. This blog gives some information on how to use the data provided by the RGB Parade to do color correction on video footage.

The RGB Parade option in the View menu is somewhat different from the  :ref:`rgb_parade_MLT` in that :menuselection:`View --> RGB Parade` displays the histogram in the application whereas the **RGB Parade** effect writes the histogram into the video output file.

.. attention::

   :ref:`scopes_directx`
