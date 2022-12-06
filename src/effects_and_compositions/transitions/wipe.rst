.. metadata-placeholder

   :authors: - Annew (https://userbase.kde.org/User:Annew)
             - Claus Christensen
             - Yuri Chornoivan
             - Ttguy (https://userbase.kde.org/User:Ttguy)
             - Bushuev (https://userbase.kde.org/User:Bushuev)
             - Roger (https://userbase.kde.org/User:Roger)
             - Smolyaninov (https://userbase.kde.org/User:Smolyaninov)

   :license: Creative Commons License SA 4.0

.. _wipe:

Composition - Wipe
==================

.. contents::

In this composition one shot replaces another by traveling from one side of the frame to another or with a special shape.

The Wipe composition contains the following parameters:

.. container:: clear-both

   .. image:: /images/Kdenlive_Wipe_transition.png
      :align: left
      :width: 350px
      :alt: Kdenlive_Wipe_transition

   * **Softness**: Determines the softness of the transition between the top and bottom clips.

.. container:: clear-both

   .. image:: /images/Kdenlive_Wipe_softness.png
      :align: left
      :width: 350px
      :alt: Kdenlive_Wipe_softness

   * **Wipe Method**: Selecting a luma file allows you to shape the composition in different shapes.

   * **Invert**: changes the direction of motion of the luma file. That is, if the file :file:`radial.pgm` is selected in the "Wipe Method" parameter and the image of the clip of the upper track disappears in a gradually decreasing circle until it is replaced by the clip of the lower track. And if the parameter is selected, on the contrary, the clip image on the lower track will appear in a growing circle until it fills the entire monitor.

   * **Revert**: If there is a sharp transition (without the correct effect) between the clips and only then the luma file, turn on the "Revert" parameter so that the composition works correctly.

.. container:: clear-both

   .. image:: /images/Kdenlive_Download_Icon.png
      :align: left
      :alt: Kdenlive download icon
      
   You can :ref:`download_new_wipes` from the KDE server.

.. rst-class:: clear-both

There was a defect with the download new wipe files - it did not download them to where they are needed.
They should go here :file:`~/.local/share/kdenlive/lumas/HD/`, but were going here :file:`~/.local/share/kdenlive/lumas/`.

To fix manually create a HD folder and move the :file:`.pgm` files there.

See also :ref:`composite`.

