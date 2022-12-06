.. metadata-placeholder

   :authors: - Claus Christensen
             - Yuri Chornoivan
             - Ttguy (https://userbase.kde.org/User:Ttguy)
             - Bushuev (https://userbase.kde.org/User:Bushuev)
             - Jack (https://userbase.kde.org/User:Jack)

   :license: Creative Commons License SA 4.0

.. _spectrogram:

Spectrogram
===========

.. contents::


This allows you to monitor the audio properties of your clip in detail.
The spectrogram displays the loudness (in decibels) of the audio at different audio frequencies over the entire length of the clip.  In the spectrogram, the horizontal axis represents the audio frequency and the loudness is represented by the brightness (version <= 0.9.8) or the colour (version >= 0.9.10) of the pixel on the graph. The vertical axis represents frame number. 


.. image:: /images/Kdenlive_Spectrogram.png
   :align: left
   :alt: Spectrogram monitor in versions 0.9.8 or lower.


.. image:: /images/Kdenlive_Spectogram_v0.9.10.png
   :align: left
   :alt: Spectrogram monitor in versions 0.9.10 or higher.



For more information see :ref:`Granjow's blog <audio_spectrum_and_spectrogram>` on Spectrogram

.. attention::

   :ref:`scopes_directx`