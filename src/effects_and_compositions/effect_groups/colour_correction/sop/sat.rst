.. metadata-placeholder

   :authors: - Claus Christensen
             - Yuri Chornoivan
             - Ttguy (https://userbase.kde.org/User:Ttguy)
             - Bushuev (https://userbase.kde.org/User:Bushuev)
             - Mmaguire (https://userbase.kde.org/User:Mmaguire)

   :license: Creative Commons License SA 4.0

.. _sat:

SOP/Sat Effect
==============

.. contents::

This is the `FilterFrei0r-sopsat <https://www.mltframework.org/plugins/FilterFrei0r-sopsat/>`_  MLT framework filter.
It changes Slope, Offset, and Power of the color components, and the overall Saturation, according to the ASC CDL (Color Decision List) `reference <https://en.wikipedia.org/wiki/ASC_CDL>`_.

Changing the slope means multiplying the pixel value with a constant value. Black pixels will remain black, while as brighter ones will be changed. All effects can be observed well when applied on a greyscale gradient and looking at the RGB Parade monitor.

You can use this effect to achieve proper white balance.

.. image:: /images/Kdenlive_SOP_sat_effect.png
   :align: left
   :alt: Kdenlive_SOP_sat_effect

This filter implements a standard way of color correction proposed by the American Society of Cinematographers: The Color Decision List, also known as the ASC CDL.

More information about the ASC CDL can be found on `wikipedia <https://en.wikipedia.org/wiki/ASC_CDL>`_.

The ASC CDL is a standard format for basic primary color correction (primary meaning affecting the whole image and not only selected parts).

Basically there are two stages in the correction:
1. SOP correction for each channel separately
2. Overall saturation correction

All corrections work on [0,1], so the RGB(A) values need to be transposed from {0,...,255} to [0,1].

1. SOP correction

   * Slope:   ``out = in * slope;   0 <= slope < \infty``
   * Offset:  ``out = in + offset;  -\infty < offset < \infty``
   * Power:   ``out = in^power;     0 < power < \infty``

2. Saturation

   * Luma:    ``Y = 0.2126 R + 0.7152 G + 0.0722 B`` (according to Rec. 709)
   * Forall channels: ``out = luma + sat * (in-luma)``

As the values may exceed 1 (or 0), they need to be clamped where necessary.

See :ref:`Granjow's blog <waveform_and_RGB_parade>` where he uses the effect to adjust white balance of a clip.

