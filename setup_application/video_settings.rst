.. meta::
   :description: digiKam Video Settings
   :keywords: digiKam, documentation, user manual, photo management, open source, free, learn, easy, camera, configuration, setup, video

.. metadata-placeholder

   :authors: - digiKam Team

   :license: see Credits and License page for details (https://docs.digikam.org/en/credits_license.html)

.. _video_settings:

Video Settings
================

digiKam relies on `FFMpeg Multimedia framework <https://ffmpeg.org/>`_ to handle video files. FFmpeg is a powerful video toolkit, which include all codecs that digiKam needs to play video files.

This section describes all advanced video settings used to tune media playing features on digiKam.

.. contents::

Decoder View
------------

This view allow to define the priority of decoders to use while playing media. In a flat list, you can enable or disable a decoder with the check-box on the left side. Selecting a entry, you can move **Up** or move **Down** with the buttons on the bottom side. The upper entries are taken in hight priority in the list by the player. At least one entry must be enable in this list to render contents in the media-player. The **Reset** button allows to clear all settings to default values.

.. note::

    Any changes in this view requires a re-start of digiKam to take effect.

.. figure:: images/setup_video_decoder.webp
    :alt:
    :align: center

    The digiKam Video Configuration Panel with the Decoder View

AVFormat View
-------------

This view allows to customize advanced settings to the `FFMpeg AVFormat component <https://ffmpeg.org/ffmpeg-formats.html#Format-Options>`_.

.. warning::

    Changing values from this view can break video player functionalities.

The **Enable avformat options** pass to ffmpeg space separated key-value defintions hosted in **Extra** string setting.

The **Reduce buffering** must minimize the delay between frames processed from a stream but this might break the audio-video synchronization.

The **Probe Size** value set probing size in bytes, i.e. the size of the data to analyze to get stream information. A higher value will enable detecting more information in case it is dispersed into the stream, but will increase latency. Must be an integer not lesser than 32. It is 5000000 by default.

The **Max analyze duration** value specify how many microseconds are analyzed to probe the input. A higher value will enable detecting more accurate information, but will increase latency. It defaults to 5,000,000 microseconds = 5 seconds.

.. figure:: images/setup_video_avformat.webp
    :alt:
    :align: center

    The digiKam Video Configuration Panel with the AVFormat View

Misc View
---------

.. figure:: images/setup_video_misc.webp
    :alt:
    :align: center

    The digiKam Video Configuration Panel with the Misc View
