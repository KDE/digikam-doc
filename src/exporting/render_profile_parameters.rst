.. meta::
   :description: The Kdenlive User Manual
   :keywords: KDE, Kdenlive, documentation, user manual, video editor, open source, free, help, learn, render, render profile, render parameter

.. metadata-placeholder

   :authors: - Annew (https://userbase.kde.org/User:Annew)
             - Claus Christensen
             - Yuri Chornoivan
             - Ttguy (https://userbase.kde.org/User:Ttguy)
             - Bushuev (https://userbase.kde.org/User:Bushuev)
             - Jack (https://userbase.kde.org/User:Jack)
             - Roger (https://userbase.kde.org/User:Roger)
             - Eugen Mohr

   :license: Creative Commons License SA 4.0

.. _render_profile_parameters:

Render Profile Parameters
=========================

.. contents::


Render Profile Parameters - How to read them
--------------------------------------------

.. versionchanged:: 22.04

.. image:: /images/exporting/edit_render_profile_22-04.png
   :align: left
   :alt: Kdenlive_Edit_render_profile_video

.. image:: /images/exporting/edit_render_profile__audio_22-04.png
   :align: left
   :alt: Kdenlive_Edit_render_profile_audio

.. image:: /images/exporting/edit_render_profile_other_22-04.png
   :align: left
   :alt: Kdenlive_Edit_render_profile_other
   

Kdenlive now makes use of "property presets" delivered by the *melt* project (see `melt doco <https://www.mltframework.org/docs/presets/>`_). These presets are referenced by the *properties=<preset>* syntax. In the example illustrated, the render profile is referencing *lossless/H.264*. This refers to a property preset found in file H.264 found on the system at :file:`/usr/share/mlt/presets/consumer/avformat/lossless`.

All the *<presets>* referenced in the render settings in Kdenlive will be referring to presets found at :file:`/usr/share/mlt/presets/consumer/avformat/` (on a default install). Note that you reference presets found in subdirectories of this folder using a :file:`<dirname>/<profile>` syntax as shown in the example above.

.. code-block:: bash

  properties=lossless/H.264
  g=120
  crf=%quality
  ab=%audiobitrate+'k'

The preset files found at :file:`/usr/share/mlt/presets/consumer/avformat/` are simple text files that contain the *melt* parameters that define the rendering. An example is shown below. These are the same parameters that were used in earlier versions of Kdenlive – see next section for how to read those.

Contents of lossless/H.264:

.. code-block:: bash

  f=mp4
  acodec=aac
  ab=384k
  vcodec=libx264
  intra=1
  vb=0
  g=0
  bf=0
  preset=medium
  qscale=1
  qp=0
  coder=ac

  <!--T:28-->
  meta.preset.extension=mp4
  meta.preset.note=Intra-frame only, lossless compressed MPEG-4 AVC with AAC audio

Scanning Dropdown
-----------------

.. image:: /images/exporting/render_dialog_21-08_scanning.png
   :alt: Scanning dropdown of the render dialog
   :align: left

This option controls the frame scanning setting the rendered file will have.
Options are *Force Progressive*, *Force Interlaced* and *Auto*.

:menuselection:`Auto` causes the rendered file to take the scanning settings that are defined in the :ref:`project_settings`. Use the other options to override the setting defined in the project settings.


Render Profile Parameters - How to read them
--------------------------------------------

.. warning::

   |outdated|

The parameters that go into a render profile derive from the **ffmpeg** program.

This is a worked example to show how you can understand what these parameters mean using the **ffmpeg** documentation.

In the example above the parameters are:

.. code-block:: bash

  f=dvd
  vcodec=mpeg2video
  acodec=mp2
  b=5000k
  maxrate=8000k
  minrate=0
  bufsize=1835008
  mux_packet_s=2048
  mux_rate=10080000
  ab=192k
  ar=48000
  s=720x576
  g=15
  me_range=63
  trellis=1
  profile=dv_pal_wide
  pass=2

Looking up the `ffmpeg help <https://linux.die.net/man/1/ffmpeg>`_ translates these parameters as shown below.

Main option is:

.. code-block:: bash

  -f fmt            force format

Video options are:

.. code-block:: bash

  -vcodec codec     force video codec ('copy' to copy stream)
  -pass n           select the pass number (1 or 2)
  -b bitrate        set bitrate (in bits/s)
  -vb bitrate       set bitrate (in bits/s)
  -s size           set frame size (WxH or abbreviation)
  -me_range         <int>   E.V.. limit motion vectors range (1023 for DivX player)
  -trellis          <int>   E.VA. rate-distortion optimal quantization

Audio options are:

.. code-block:: bash

  -acodec codec     force audio codec ('copy' to copy stream)
  -ab bitrate       set bitrate (in bits/s)
  -ar rate          set audio sampling rate (in Hz)

The AVCodecContext AVOptions include:

.. code-block:: bash

  -b                <int>   E.V.. set bitrate (in bits/s)
  -maxrate          <int>   E.V.. set max video bitrate tolerance (in bits/s)
  -minrate          <int>   E.V.. set min video bitrate tolerance (in bits/s)
  -g                <int>   E.V.. set the group of picture size

So all the render profile options are documented here in the **ffmpeg** documentation.

See also `MLT doco <https://www.mltframework.org/docs/presets/>`_ on ConsumerAvFormat.

See also `HOWTO Produce 4k and 2K videos, YouTube compatible <https://forum.kde.org/viewtopic.php?f=272&amp;t=124869#p329129>`_.

