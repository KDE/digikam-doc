.. metadata-placeholder

   :authors: - Claus Christensen
             - Yuri Chornoivan
             - Ttguy (https://userbase.kde.org/User:Ttguy)
             - Bushuev (https://userbase.kde.org/User:Bushuev)
             - Smolyaninov (https://userbase.kde.org/User:Smolyaninov)

   :license: Creative Commons License SA 4.0

.. _alpha_operations:

Alpha operations
================

.. contents::

This is the `Frei0r alpha0ps <https://www.mltframework.org/plugins/FilterFrei0r-alpha0ps/>`_ MLT filter - Display and manipulation of the alpha channel.

Use this to shrink, grow, threshold and visualize the alpha channel.

This plugin can shrink, grow, threshold and invert the alpha channel. It is mainly intended to improve keying edges.
It can also display the alpha channel in various ways, to enable quick assessment of the effect.

It is cascadable, so for example one can do a soft shrink first and then threshold, which gives a slightly different result than a hard shrink.

Parameters
----------

Display
~~~~~~~~

What to display. There are seven options: :menuselection:`Image`, :menuselection:`Alpha as gray`, :menuselection:`Gray + red`, :menuselection:`Selection on black`, :menuselection:`Selection on gray`, :menuselection:`Selection on white`, and :menuselection:`Selection on checkers`.

This effect lets the unchanged input image though - this plugin is intended to change only the alpha channel...

Display input alpha
~~~~~~~~~~~~~~~~~~~~

Use input alpha for the display function above. (Check what alpha we are getting on the input).

Operation
~~~~~~~~~~

Select the operation to be done on the alpha channel. Currently there are eight choices: :menuselection:`NO OP`, :menuselection:`Shave`, :menuselection:`Shrink hard`, :menuselection:`Shrink soft`, :menuselection:`Grow hard`, :menuselection:`Grow soft`, :menuselection:`Threshold`, and :menuselection:`Blur`.

:menuselection:`Shave` try to remove the "hairy" stuff, and also shrinks the selection a bit.

The *hard* operations introduce no new values to the alpha channel, so if you have a "hard" key (only 0 and 255) it will stay that way.

The *soft* operations will introduce interpolated values, making the edge softer.

.. note::

  The shave, shrink and grow operations are quite slow, because they do many conditional operations on each pixel.

Threshold
~~~~~~~~~~

This is only used for the :menuselection:`Threshold` operation.

Shrink/grow amount
~~~~~~~~~~~~~~~~~~~

How far the shrinking/growing will extend.

Invert
~~~~~~

Inverts the input alpha channel, transparent will become opaque and vice versa.

.. image:: /images/Alpha_operations.png
   :align: left
   :alt: Alpha_operations

.. image:: /images/alpha_operations_display_menu.png
   :align: left
   :alt: Display Menu Options

.. image:: /images/Alpha_operations_operation_menu.png
   :align: left
   :alt: Operation Menu Options

Tutorial 1
----------

Shows usage of alpha operations - :menuselection:`Shrink hard` as well as the following effects: :ref:`blue_screen`, :ref:`denoiser`, and :ref:`keysplillm0pup`.

https://youtu.be/l43Hz7YEcYU

