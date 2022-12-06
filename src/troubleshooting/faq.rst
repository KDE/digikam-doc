.. metadata-placeholder

   :authors: - Annew (https://userbase.kde.org/User:Annew)
             - Claus Christensen
             - Yuri Chornoivan
             - Ttguy (https://userbase.kde.org/User:Ttguy)
             - Jack (https://userbase.kde.org/User:Jack)
             - Roger (https://userbase.kde.org/User:Roger)
             - Dadu042 (https://userbase.kde.org/User:Dadu042)
             - Carl Schwan <carl@carlschwan.eu>

   :license: Creative Commons License SA 4.0

.. _faq:

Frequently Asked Questions
==========================

.. contents::


What components does Kdenlive use?
----------------------------------

In effect, **Kdenlive** is a front end to `melt <http://www.mltframework.org/bin/view/MLT/MltMelt>`_ - which uses the MLT video framework. The MLT video framework relies on the FFMPEG project. **Kdenlive** writes :file:`sh.mlt` XML files that code the edit points and transitions and it then calls :file:`/usr/bin/kdenlive_render` and :file:`/usr/bin/melt` to render the video.


How do I fix Audio Sync Issues?
-------------------------------

Often this is caused by having mixtures of different audio sources in the project. Audio encoded with VBR (be it pure audio like MP3 or video with audio) can be problematic.

If your audio source is from a video file try extracting the audio from your video sources and transcoding the audio to WAV format. If you use the :ref:`extract_audio` feature of Kdenlive to do this it will write a .wav file for you.


If you have a pure audio source try transcoding that to WAV.

.. code-block:: bash

   lame --decode file.mp3 file.wav
