.. metadata-placeholder

   :authors: - Claus Christensen
             - Yuri Chornoivan
             - Ttguy (https://userbase.kde.org/User:Ttguy)
             - Bushuev (https://userbase.kde.org/User:Bushuev)

   :license: Creative Commons License SA 4.0

.. _waveform:

Waveform
========

.. contents::


This data is a 3D histogram.  It represents the Luma component (whiteness) of the video. It is the same type of graph as for the :ref:`rgb_parade`. The horizontal axis represents the horizontal axis in the video frame. The vertical axis is the pixel luma from 0 to 255. The brightness of the point on the graph represents the count of the number of pixels with this luma in this column of pixels in the video frame. 


.. image:: /images/Kdenlive_Wave_form.png
   :align: left
   :alt: Wave form


For more information see :ref:`Granjow's blog <waveform_and_RGB_parade>` on the waveform and RGB parade scopes. This blog gives some information on how to use the data provided by the RGB parade to do color correction on video footage.

.. attention::

   :ref:`scopes_directx`