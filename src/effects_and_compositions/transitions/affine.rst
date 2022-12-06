.. metadata-placeholder

   :authors: - Yuri Chornoivan
             - Ttguy (https://userbase.kde.org/User:Ttguy)
             - Jack (https://userbase.kde.org/User:Jack)

   :license: Creative Commons License SA 4.0

.. _affine:

Affine Transition
=================

.. contents::

Generates image rotation in 3D space, skew and distortion.

Provides keyframable animated affine transformations with dissolve functionality.

In many applications, this transition can be used instead of a :ref:`composite` and this provides a workaround to the composite transition "green tinge" bug reported by some. (Mentioned in legacy Mantis bug tracker ID 2759.


Example 1
---------

https://youtu.be/hylowKurZaw

.. image:: /images/Kdenlive_Affine_transition.png
   :align: left
   :alt: Affine Transition


Disolve using Affine Transition
-------------------------------

To add a Dissolve, change the opacity to zero percent.


Rotation using Affine Transition
--------------------------------

To rotate the image, add a keyframe and enter values for rotation. The units are 10ths of degrees. (e.g. 900 = 90 degree rotation).

**Rotate X** rotates the frame in the plane of the screen.
**Rotate Y** and **Rotate Z** create the illusion of 3D rotation when used dynamically with keyframes - see example below.

You can create a similar effect using the :ref:`rotate_(keyframable)` effect from the Crop and Transform group.


Example 2 - Rotate Y
--------------------

https://youtu.be/IAWMIL7c9K4

This example is created using 3 keyframes. The second keyframe is shown below with a **Rotate Y** value of 1800 (=180 degrees). Keyframe one and keyframe three both have **Rotate Y** values of zero.

.. image:: /images/Kdenlive_Affine_rotate_kf2.png
   :align: left
   :alt: Keyframe two

.. image:: /images/Kdenlive_Affine_rotate_timeline.png
   :align: left
   :alt: Timeline for this demo clip

The difference between **Rotate Y** and **Rotate Z** is that the apparent rotation in **Rotate Y** appears to be around a horizontal axis. The rotation in **Rotate Z** appears to be around a vertical axis.

