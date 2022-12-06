.. metadata-placeholder

   :authors: - Claus Christensen
             - Yuri Chornoivan
             - Ttguy (https://userbase.kde.org/User:Ttguy)
             - Jack (https://userbase.kde.org/User:Jack)
             - Eugen Mohr
             - Brylie Christopher Oxley (https://userbase.kde.org/User:Brylie Christopher Oxley)

   :license: Creative Commons License SA 4.0

.. _capturingaudio:

Capturing Audio (Dubbing)
=========================

.. contents::




You can use Kdenlive to capture audio from a microphone while you play your project in the **Project Monitor**. In this way you can dub in a voiceover.


Under the **Record Monitor**, choose *FFmpeg* capture and enable *Audio* only and hit the **Record** button. Then move back to the **Project Monitor** and hit **Play**. You can now record audio only while the clip is playing. (This feature has had some issues in the past. It has worked in ver 0.9.4 - see bug `#2910 <https://bugs.kdenlive.org/view.php?id=2910>`_)


Version 19.04
-------------

.. versionadded:: 19.04

An option in track headers allows you to have audio record controls. This enables you to play your project while recording a voice over comment. Very handy for making tutorials.


You will need to right-click an audio track and then click **Show Record Controls**.


.. image:: /images/audio-recording.gif
   :align: left
   :alt: audio-recording 



.. note::

  This will likely record stereo audio, which can be mixed down to mono using the Audio correction **Copy Channels** effect.


