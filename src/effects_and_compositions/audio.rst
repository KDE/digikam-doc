.. meta::
   :description: Mix audio in Kdenlive video editor
   :keywords: KDE, Kdenlive, timeline, audio mixer, multiple audio streams, audio recording, documentation, user manual, video editor, open source, free, learn, easy


.. metadata-placeholder

   :authors: - Eugen Mohr


   :license: Creative Commons License SA 4.0

.. _audio:

Audio
=====

Kdenlive has some tools for handling audio. Beside the audio spectrum viewer and some audio effects, you have following possibilities:

.. _audio_mixer:

Audio Mixer
~~~~~~~~~~~~~~~~

.. versionadded:: 19.12.0

.. versionchanged:: 22.08

.. image:: /images/Audio-Mixer.png
   :alt: Audio-Mixer

The audio mixer has following functions for each channel:

1.	Channel number (audio track number) or Master channel
2.	Mute an audio channel
3.	Solo an audio channel
4.	:ref:`Record audio <audio-recording>` direct on the track of the related audio channel
5.	Opens the effect stack of the related audio channel
6.	Balance the audio channel. Either with the slider or with values
7.	Adjustment of the volume

Multiple audio streams
~~~~~~~~~~~~~~~~~~~~~~

.. versionadded:: 20.08.0

Multiple audio streams of a video clip. In clip properties on the tab audio you can adjust and manipulate each audio stream. More details see here :ref:`audio_properties`
  
.. _audio-recording:

Audio recording
~~~~~~~~~~~~~~~

.. versionchanged:: 22.08

There is now a :guilabel:`mic` button in the mixers (number 4 in above picture) instead of the :guilabel:`record` button. Pressing the :guilabel:`mic` button will enter in audio monitoring mode (levels show mic input and volume slider selects the mic level). While recording you see a live waveform appearing on timeline.


.. image:: /images/audio-record.png
   :alt: audio-record


Enabling :guilabel:`mic` displays the track head record control and it get colorized.

.. image:: /images/audio-countdown.png
   :width: 40%
   :alt: audio-countdown

**Start record:** press :kbd:`spacebar` or click the :guilabel:`record` button on the track head. A countdown start in project monitor.

**Pause:** press :kbd:`spacebar`

**To resume:** press :kbd:`spacebar` again

**Stop record:** press :kbd:`esc` or click the :guilabel:`record` button in the track head. The audio clip get added in the timeline and project bin.
