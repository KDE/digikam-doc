.. metadata-placeholder

   :authors: - Annew (https://userbase.kde.org/User:Annew)
             - Claus Christensen
             - Yuri Chornoivan
             - Ttguy (https://userbase.kde.org/User:Ttguy)
             - Bushuev (https://userbase.kde.org/User:Bushuev)
             - Jack (https://userbase.kde.org/User:Jack)
             - Carl Schwan <carl@carlschwan.eu>

   :license: Creative Commons License SA 4.0


.. _stabilize:

Stabilize
=========

.. contents::

This menu item is available from :ref:`project_tree` on a clip in the Project Bin or under the :ref:`project_menu` menu when a clip is selected in the Project Bin.

This feature applies image stabilization algorithms to the clip which can reduce the shakiness of a bit of footage.

**Stabilize**

.. image:: /images/user_interface/stabilize_dialog_21-12.png
  :align: left
  :alt: Stabilize Clip dialog in version 21.12

Based on the tooltips from this screen and the `docs here <http://public.hronopik.de/vid.stab/features.php?lang=en>`_, this is what all the options mean:

Accuracy
   Accuracy of shakiness detection. Should be >= shakiness factor. 1: low (fast processing). 15: high (slow processing). Default: 4. Recommended: 8.

Shakiness
   How shaky is the video? And how quick is the camera? 1: little (fast processing). 10: very strong/quick (slow processing). Default = 4. Note: large values may also reduce the accuracy. This is due to the internals of the movement-detection. Typically you don't need a value greater than 7.

Stepsize
   Step size of search process. Region around minimum is scanned with 1 pixel resolution. Default = 6.

Min. contrast
   Below this contrast, the field is discarded. Range 0-1. Default = 0.3. You may want to use a smaller value for a really low contrast clip.

Smoothing
   Controls the amount of smoothing/stabilization. The larger the value for smoothing, the more camera movements are compensated. The resulting clip has a lower change in camera speed.
   Technically it is the number of frames for lowpass filtering = (smoothing * 2) + 1.

   For example, with a with 25 fps clip, a value of 12 for the smoothing factor means we would smooth over one second - 12 frames behind the current frame + the current frame (1) + 12 frames after the current frame. Default =   10.

   Demo of the difference `here <http://public.hronopik.de/vid.stab/files/skiing_veryshaky_short_vs_longsmoothing_above.ogv>`_ (top:3, bottom: 30).

Max shift
   Maximal number of pixels to translate image. Default = -1. No limit.

Max angle
   Maximum angle to rotate in radians. Default = -1, which means no limit.

Crop
   Unchecked means the border of the transformed frames contains the pixels from previous frames. Checked = black background. Default = unchecked.

Zoom
   Additional zoom during transform. Percentage to zoom > 0 = zoom in, < 0 = zoom out. The zoom specified here is in addition to the optimum zoom calculated by the program when optzoom is checked. Default = 0.

Optimal Zoom
   Use optimal zoom (calculated from transforms). Causes video to zoom until 90% of transformations are hidden. Default is checked. Hint: You can further zoom in with the zoom option.

Optimal Zoom
   Zoom per frame (used when "Optimal Zoom" = 2)

Sharpen
   Sharpen transformed image. Amount of sharpening: 0: no sharpening. Uses filter unsharp with 5x5 matrix. Default = 0.8.

Show fields
   0 = draw nothing, 1 or 2 = show fields and transforms. Use 1 or 2 to preview what the process is going to do. `Example <http://public.hronopik.de/vid.stab/files/skiing_veryshaky_visualized8_short.ogv>`_. Default = 0. Non-zero values of this parameter are not relevant in the **Kdenlive** implementation - use zero.

Tripod
   Reference frame


Example of the effect of running stabilize - transcode from the original author - Georg Martius.

Side by side
https://youtu.be/HYE3KAl8RAQ

Deshaked
https://youtu.be/c3CEm8bgVQ0

Original
https://youtu.be/cRA5H1LYzM4
