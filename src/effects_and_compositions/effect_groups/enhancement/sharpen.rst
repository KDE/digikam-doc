.. metadata-placeholder

   :authors: - Claus Christensen
             - Yuri Chornoivan
             - Ttguy (https://userbase.kde.org/User:Ttguy)
             - Bushuev (https://userbase.kde.org/User:Bushuev)
             - Mmaguire (https://userbase.kde.org/User:Mmaguire)

   :license: Creative Commons License SA 4.0

.. _sharpen:

Sharpen
=======

.. contents::

The sharpen tool is a port of `unsharp mask <https://en.wikipedia.org/wiki/Unsharp_masking>`_ from Mplayer. The parameters are the usual ones for unsharp masking. The "size" means the size of the blur, and the amount is how much of the blurred version gets subtracted.

The Size parameter ranges from 0 to 1000, where 0 represents a 3x3 neighbourhood, 250 represents a 5x5 neighbourhood, and 1000 represents an 11x11 neighbourhood. Typically values from 0-250 are a good starting point.

The Amount parameter also ranged from 0 to 1000, and defaults to an input value of 300. The default value of 300 represents a neutral input, corresponding to a 0% sharpening. Increasing above 300 will increase the sharpening amount, with 500 representing 100% sharpening, 700 representing 200% sharpening, and 1000 representing 350% sharpening. A value of 500 (ie. 100% sharpening) is typically a good place to start. Reducing the input to below 300 will result in a gaussian blurring of the picture, with an input value of 0 representing a -150% "sharpening" (ie. gaussian blurring).

See this :ref:`blue_screen` that describes how to use.

* Alpha Manipulation -> :ref:`blue_screen`
* :ref:`rotoscoping`
* :ref:`composite`
* Crop and Transform -> :ref:`pan_and_zoom`
* Sharpen Effect
* Alpha Manipulation -> :ref:`alpha_operations`

https://youtu.be/l43Hz7YEcYU

