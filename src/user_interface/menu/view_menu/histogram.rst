.. metadata-placeholder

   :authors: - Claus Christensen
             - Yuri Chornoivan
             - Ttguy (https://userbase.kde.org/User:Ttguy)
             - Bushuev (https://userbase.kde.org/User:Bushuev)

   :license: Creative Commons License SA 4.0

.. _histogram:

Histogram
=========

.. contents::


This scope displays a frequency histogram of the luminance of the color components of the video. This information is useful when used in combination with color correction effects to perform color correction on the video. Color correction includes increasing the brightness or adjusting the white balance to ensure that white remains white and not blue.

The histograms have the luminance on the horizontal axis going from 0 on the left to 255 on the right. The vertical (Y) axis represents the count of the total number of pixels in the current video frame with a given luminance.


.. image:: /images/Kdenlive_Histogram.png
   :align: left
   :alt: Histogram


For more information read :ref:`Granjow's blog <histogram_working>` on the histogram scope.

.. attention::

   :ref:`scopes_directx` 