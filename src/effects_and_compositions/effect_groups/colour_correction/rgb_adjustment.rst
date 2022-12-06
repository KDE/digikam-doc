.. metadata-placeholder

   :authors: - Claus Christensen
             - Yuri Chornoivan
             - Ttguy (https://userbase.kde.org/User:Ttguy)
             - Bushuev (https://userbase.kde.org/User:Bushuev)
             - Marko (https://userbase.kde.org/User:Marko)

   :license: Creative Commons License SA 4.0

.. _rgb_adjustment:

RGB adjustment
==============

.. contents::

This filter is for simple manual color adjustment by RGB channel, either through adding constants, or changing the channel gammas or gains.

:menuselection:`Simple` means that it works channel-wise, no crosstalk. The off-diagonal elements of the transform matrix are zero - no color crosstalk, no color space rotation. But this should be sufficient for many tasks. For example, when shooting under tungsten light, the blue signal will not migrate into red, it will simply be too small. Amplifying the blue (and a bit of green too) should be all that is needed. Similar, an underwater shot will simply be red deficient, needing some red boost, etc.

Parameters:

**R,G,B:**

  These determine the change in each of the three color channels.

**Action:**

  * :menuselection:`Add constant` adds a fixed value between -150 and +150 (this is sometimes called "black level" or "setup").
  * :menuselection:`Change gamma` changes channel gamma between 0.3333 and 3.0.
  * :menuselection:`Multiply` multiplies channel with a value between 0.3333 and 3.0 (sometimes called "gain" or "contrast").

.. note::

  To apply more than one action above, use cascaded instances of coloradj_RGB.

.. note::

  :menuselection:`Add constant` simply shifts the RGB "cube" colorspace. This means, that on one end we are left with empty space, which is filled with zeros, and on the other end, values can "fall outside", and in this case they will be truncated to max (255). :menuselection:`Change gain` changes the size of the cube, keeping the "black" corner fixed, affecting predominately highlights, but the other end can still "fall out" and get 255 truncated. :menuselection:`Change gamma` keeps the whole cube in the same place, just stretches and squeezes its interior, so no zero filling or truncation is necessary.

To visualize this plugin's actions, apply it to a gray gradient, and watch the result with "pr0file".

**Keep luma:**

  Fixes the luma value, so that the sliders only affect color.

This is the `Frei0r coloradj_rgb <https://www.mltframework.org/plugins/FilterFrei0r-coloradj_rgb/>`_ MLT filter.

