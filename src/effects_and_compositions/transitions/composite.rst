.. metadata-placeholder

   :authors: - Annew (https://userbase.kde.org/User:Annew)
             - Claus Christensen
             - Yuri Chornoivan
             - Ttguy (https://userbase.kde.org/User:Ttguy)
             - Bushuev (https://userbase.kde.org/User:Bushuev)
             - Jack (https://userbase.kde.org/User:Jack)
             - Smolyaninov (https://userbase.kde.org/User:Smolyaninov)
             - Fentras (https://userbase.kde.org/User:Fentras)

   :license: Creative Commons License SA 4.0

.. _composite:

Composite Transition
====================

.. contents::

The Composite transition combines the video data from two video tracks into one. This transition is used in combination with Alpha Channel information supplied by one of the :ref:`alpha_manipulation` or by the use of a :ref:`composite`. This Alpha Channel data describes how the data from the two video tracks should be combined. Until you define some alpha channel data using an :ref:`alpha_manipulation` or a Wipe File, changes in the Composite transition settings will have no visible effect.

Note: The disadvantages of the **Composite** transition are: luma bleed, and less precise position control. When compared to **Affine**, the **Composite** transition, it does not support rotation or skewing but it is much faster, albeit at the cost of luma bleed.

Alpha operations
----------------

.. image:: /images/Composite_transition_showing_alpha_channel_operation_options.png
   :width: 400px
   :align: left
   :alt: Composite_transition_showing_alpha_channel_operation_options

Alpha operation options are *Over*, *And*, *Or* and *Xor*:

Operation **Over**

* The clip with alpha information is located on the top track: the selected color acquires transparency.
* The clip with alpha information is located on the bottom track: we see only the top clip.

.. image:: /images/alpha_operation_Over.png
   :align: left
   :alt: alpha_operation_Over

Operation **And**

* The clip with alpha information is located on the top track: the selected color becomes transparent.
* The clip with alpha information is located on the bottom track: everything in the image becomes transparent, except for the selected color.

.. image:: /images/alpha_operation_And.png
   :align: left
   :alt: alpha_operation_And

Operation **Or** clears any alpha information

.. image:: /images/alpha_operation_Or.png
   :align: left
   :alt: alpha_operation_Or

Operation **Xor**

* The clip with alpha information is located on the top track: everything in the image becomes transparent, except for the selected color.
* The clip with alpha information is located on the bottom track: the selected color acquires transparency.

.. image:: /images/alpha_operation_Xor.png
   :align: left
   :alt: alpha_operation_Xor


Tutorial 1
----------

See this :ref:`blue_screen` that describes how to use:

* Alpha Manipulation -> :ref:`blue_screen`
* :ref:`rotoscoping`
* Composite Transition.
* Crop and Transform -> :ref:`pan_and_zoom`
* Enhancement -> :ref:`sharpen`
* Alpha Manipulation -> :ref:`alpha_operations`


Tutorial 2 - composite transition and Blue Screen
-------------------------------------------------

Tutorial showing how to use the "Blue screen" function, composite transition and :ref:`effects` to animate one image moving over another in the **Kdenlive** video editor.

https://youtu.be/M8hC5FbIzdE


Tutorial 3 - Video Masks
------------------------

This tutorial uses the Composite transition and a custom video mask (a.k.a. a Wipe File or `matte <https://en.wikipedia.org/wiki/Matte_(filmmaking)>`_) to create an effect where you can make it appear that one video is playing on the screen of a still of a computer monitor.

The mask/matte is created with **GIMP**.

Save your mattes to :file:`/usr/share/kdenlive/lumas`.

It would appear that you need to stop and restart **Kdenlive** in order for it to pick up new matte/wipe files saved in the above folder.

There appears to be a defect in this functionality which means that when the composite is on 100% Opacity, the wipe file does not work. You need to change it to 99% to make the effect kick in.

https://youtu.be/FIpnGlRY27U

.. image:: /images/Composite_transition_with_wipe_file.png
   :align: left
   :alt: Composite_transition_with_wipe_file

Screenshot of Composite transition using a custom wipe file to mask out a section of video - as described in Tutorial 3.

Aspirational goal - a compositing experiment made using detonation films free sample effects.

**Warning**: video below may be inappropriate for some users. https://youtu.be/vo-xntF1bns

