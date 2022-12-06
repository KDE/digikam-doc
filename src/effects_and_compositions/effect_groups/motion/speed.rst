.. metadata-placeholder

   :authors: - Claus Christensen
             - Yuri Chornoivan
             - Ttguy (https://userbase.kde.org/User:Ttguy)
             - Bushuev (https://userbase.kde.org/User:Bushuev)
             - Jack (https://userbase.kde.org/User:Jack)

   :license: Creative Commons License SA 4.0

.. _speed:

Motion Effects - Speed
======================

.. attention::

   .. deprecated:: 21.04
      Use :ref:`change_speed` instead


.. contents::

Make clip play faster or slower. Use of this effect mutes the audio of the clip.

.. image:: /images/Kdenlive_Motion_speed_effect.png
   :align: left
   :alt: Kdenlive_Motion_speed_effect

The *Stroboscope* setting defines the number frames the effect skips when playing back. For example, if *Stroboscope* is set to 5 then the effect will only show every fifth frame but will show these frames for five times as long, producing a jumpy, stroboscopic effect.

It has been reported that the **Speed** effect does not work very well on H.264-formatted source video. It is recommended to transcode your source material into the DNxHD format and apply the **Speed** effect to that. (`forum post <https://forum.kde.org/viewtopic.php?f=270&amp;t=121296&amp;p=311629#p311427>`_)

