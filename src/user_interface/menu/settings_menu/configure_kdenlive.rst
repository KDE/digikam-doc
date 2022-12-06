.. meta::
   :description: Configure settings in Kdenlive video editor
   :keywords: KDE, Kdenlive, setting, file type, editing, timeline, documentation, user manual, video editor, open source, free, learn, easy


.. metadata-placeholder

   :authors: - Claus Christensen
             - Yuri Chornoivan
             - Ttguy (https://userbase.kde.org/User:Ttguy)
             - Bushuev (https://userbase.kde.org/User:Bushuev)
             - Dirkolus (https://userbase.kde.org/User:Dirkolus)
             - Jessej (https://userbase.kde.org/User:Jessej)
             - Jack (https://userbase.kde.org/User:Jack)
             - Roger (https://userbase.kde.org/User:Roger)
             - Eugen Mohr

   :license: Creative Commons License SA 4.0

.. _configure_kdenlive:

Configure Kdenlive
==================

.. contents::

Following settings applies when you start a project with :ref:`new`.

.. _configure_misc:

Misc
----


.. image:: /images/Kdenlive_Configure_misc.png
   :width: 500px
   :alt: Kdenlive_Configure_misc



Open the last project on startup

Check if the first added clip matches the project profile

Crash recovery (:ref:`auto_save`)

Use KDE job tracking for render jobs

Use on-monitor effects

Disable parameters when the effect is disabled

Default Durations

Automatically import image sequences

Transparent background for imported images

.. _configure_project_defaults:

Project Defaults
----------------


Configures what the project settings will look like by default when you choose File --> :ref:`New`.


.. image:: /images/Kdenlive_Configure_project_defaults.png
   :width: 500px
   :alt: Kdenlive_Configure_project_defaults

.. _configure_proxy_clips:

Proxy Clips
-----------

Configures what the proxy settings will be when you choose File --> :ref:`New`.

.. image:: /images/Kdenlive_Configure_proxy.png
   :width: 500px
   :alt: Kdenlive_Configure_project_proxy

.. _configure_timeline:

Timeline
--------

Configure how the timeline appears in **Kdenlive**


.. image:: /images/Configure_Timeline.png
   :width: 500px
   :alt: Configure_Timeline


**Thumbnails** 

- Video: Turns on video thumbnail by default.

- Audio: Turns on audio thumbnail by default.

- Separate channels: If checked you will get a separate waveform in the audio thumbnail for each audio channel in the audio track. If unchecked you will get a single waveform as the audio thumbnail.

**Settings**

- Autoscroll while playing

- Pause playback when seeking: **Enabled:** It stops playback while you click on a new position in the timeline. **Disabled:** Playback is ongoing while you click on a new position in the timeline. It allows looping playback, see :ref:`loop_playback`.

- Zoom using vertical drag in the ruler

- Track Height: defines the default track height in pixels for the tracks on the timeline.

**Multi stream audio clips**

On import, enable: select if :menuselection:`all audio streams`, :menuselection:`first audio stream`, :menuselection:`first 2 audio streams` should be imported.

- Check if project contains enough audio tracks. If enabled Kdenlive asks if it should generate the additional audio tracks needed automatically.

**Raise properties pane when selecting in timeline**

More details :ref:`here <automatically-raising-the-properties-pane>`


.. _configure_environment:

Environment
-----------


MLT Environment
~~~~~~~~~~~~~~~

.. figure:: /images/Kdenlive_Configure_environment_MLT.png
   :width: 500px
   :alt: Kdenlive_Configure_environment_MLT_Windows

   Environment variables on Windows

.. figure:: /images/Kdenlive_Configure_environment_MLT_Linux.png
   :width: 500px
   :alt: Kdenlive_Configure_environment_MLT_Linux

   Environment variables on Kdenlive normal installed on Linux (Appimage, Flatpak, Snap may have integrated paths)

.. figure:: /images/Kdenlive_Configure_environment_MLT_MacOS.png
   :width: 500px
   :alt: Kdenlive_Configure_environment_MLT_Windows

   Environment variables on MacOS


This setting tells **Kdenlive** where to find the MLT executables and profile files. Only advanced users would really need to change these settings. **Kdenlive** is basically a front end to the MLT program and this setting tells **Kdenlive** where to find the engine that runs the whole application.

Path to the MediaInfo file. If filled in Kdenlive shows more details in clip properties.

**Proxy and Transcode Jobs**

:guilabel:`Concurrent threads` This will set the number of threads the program will attempt to use when calling ffmpeg to encode :ref:`clips`. This will be what kdenlive passes to the ffmpeg  *-threads* parameter. Increasing this parameter may not have an effect if you have changed the proxy encoding settings using :ref:`project_settings` to a codec that ffmpeg does not do multi-thread on. (Multi-threading is supported for MPEG-2, MPEG-4, H.264, and VP8)

.. versionadded:: 22.08

:guilabel:`Use lower CPU priority for proxy and transcode tasks`

This adds a Kdenlive setting to lower the priority of the proxy rendering (QProcess). This helps keep the main UI responsive when proxies are rendering.

.. deprecated:: 19.04

**Processing and transcode jobs**: This is experimental and was removed in ver 0.9.10. This number was passed to melts *real_time* consumer property. This parameter increases the number of threads the program uses for video decoding and processing (but not encoding which is controlled via :ref:`render`).  See `mlt doco <https://www.mltframework.org/faq/#does-mlt-take-advantage-of-multiple-cores-or-how-do-i-enable-parallel-processing>`_. Using this has potential side effects - see `this <https://forum.kde.org/viewtopic.php?f=265&t=122140#p317318>`_ forum post from the author of the Melt program.

If you want to experiment with multi threading in versions higher than 0.9.10  you could add something like "real_time=-4" to a custom render profile.  And yes that is a minus 4 in the example - as per the    `mlt doco <https://www.mltframework.org/faq/#does-mlt-take-advantage-of-multiple-cores-or-how-do-i-enable-parallel-processing>`_ - numbers <0 implement threading without dropping frames.


Default Folders
~~~~~~~~~~~~~~~

.. figure:: /images/Kdenlive_Configure_environment_default_folders.png
   :width: 500px
   :alt: Kdenlive_Configure_environment_default_folders

   Default folders on Windows.

.. figure:: /images/Kdenlive_Configure_environment_default_folders_Linux.png
   :width: 500px
   :alt: Kdenlive_Configure_environment_default_folders_Linux

   Default folders on Linux.

.. figure:: /images/Kdenlive_Configure_environment_default_folders_MacOS.png
   :width: 500px
   :alt: Kdenlive_Configure_environment_default_folders_MacOS

   Default folders on MacOS.


This setting controls where **Kdenlive** expects project files to be by default. It also controls what folder **Kdenlive** will use as a temporary file storage location and it controls where files captured from an external source will be saved.

.. _default_apps:

Default Apps
~~~~~~~~~~~~

.. image:: /images/Kdenlive_Configure_environment_default_apps.png
   :width: 500px
   :alt: Kdenlive_Configure_environment_default_apps

This setting controls what external application opens when you choose :ref:`edit_clip` for a clip in the project bin. 

:guilabel:`Image editing`: A free software would be `Krita <https://www.audacityteam.org/>`_.

:guilabel:`Audio editing`: A free software would be `Audacity <https://krita.org/en/>`_.

:guilabel:`Animation editing`: Kdenlive updates automatically files which are saved in Glaxnimate. Glaxnimate can be downloaded from `here <https://glaxnimate.mattbas.org/>`_ (Linux, Windows, Mac).

**Mac user:** :ref:`Instruction <kdenlive_macos>` how to install and run `dmg` files.

**Windows user:** Make sure all the paths points to an `.exe` file. `Glaxnimate.exe` is in folder `C:/YourPath/glaxnimate-x86_64/glaxnimate/bin/glaxnimate.exe`.


.. hint::

   There is no application for video editing - because **Kdenlive** is a video editor.

Mime types
~~~~~~~~~~

.. image:: /images/Kdenlive_Configure_environment_mime_types.png
   :width: 500px
   :alt: Kdenlive_Configure_environment_mime_types

Specifies the Media Types (formerly known as MIME types) which Kdenlive can working with.

.. versionadded:: 22.08

Added file type: `AVIF`, `HEIF` and `JPEG XL`

Added animation file type: `Json` (Lottie animations) and `rawr` (Glaxnimate animation)

.. _configure_colors:

Colors
------

.. image:: /images/Kdenlive_Configure_colors.png
   :width: 500px
   :alt: Kdenlive_Configure_colors

:guilabel:`Audio thumbnail colors` Click on the color bar and change the color of the audio wave thumbnail.

.. versionadded:: 22.08.0

:guilabel:`Monitor overlay color` Click on the color bar and change the color of the monitor overlay lines. See :ref:`monitor_toolbars`

.. _configure_speech_to_text:

Speech To Text
--------------

.. image:: /images/Kdenlive_Configure_speech-to-text.png
   :width: 500px
   :alt: Kdenlive_Configure_speech-to-text

More details about speech to text see :ref:`here <speech_to_text>`. 

.. _configure_capture:

Capture
-------

.. note::

  At least Firewire capture was removed in porting to KDE 5 due to lack of manpower.


Configure the :ref:`capturing` devices (Firewire, FFmpeg, Screen Grab, Blackmagic, Audio) from this section.


Configure Firewire Capture
~~~~~~~~~~~~~~~~~~~~~~~~~~

The image shows the Configure Firewire capture tab which can be accessed from the :menuselection:`Settings --> Configure Kdenlive` menu or from the spanner icon in the :ref:`capturing`


.. image:: /images/Kdenlive_Configure_Capture.png
   :width: 500px
   :alt: Kdenlive_Configure_Capture



The firewire capture functionality uses the `dvgrab <http://linux.die.net/man/1/dvgrab>`_ program.
The settings applied here to define how dvgrab will be used to capture the video. 

**Capture Format options** are

* DV RAW
* DV AVI Type 1
* DV AVI Type 2
* HDV

The first three are quality-wise the same (exactly the same DV 25Mb/s standard definition codec), just packed differently into the file. Type 2 seems to be the most widely supported by other applications.

The raw format contains just the plain video frames (with audio interleaved) without any additional information. Raw is useful for some Linux software. Files in this format can also be played with Windows QuickTime when renamed to :file:`file.dv`.

AVI files may contain multiple streams. Typically, they include one video and one audio stream. The native DV stream format already includes the audio interleaved into its video stream. A type 1 DV AVI file only includes one DV video stream where the audio must be extracted from the DV video stream. A type 2 DV AVI file includes a separate audio stream in addition to the audio data already interleaved in the DV video stream. Therefore, the type 2 DV AVI file is redundant and consumes more space.

HDV is a high-definition format used on tape-based HD camcorders.

**Add recording time to captured file name** option: If this is unchecked then each captured file will get a sequential number post-pended to the file names listed in the Capture file name setting. With this checked, date and timestamp (derived from when the footage was captured) is post-pended to the capture file name, e.g. **capture2012.07.15_11-38-37.dv**

**Automatically start a new file on scene cut** option:  With this checked it tries to detect whenever a new recording starts, and store it into a separate file. This is the -autosplit parameter in  `dvgrab <http://linux.die.net/man/1/dvgrab>`_  and it works by detecting timecode discontinuities from the source footage.  Where a timecode discontinuity is anything backward or greater than one second it will start a new capture file.

The **dvgrab additional parameters** edit box allows you to add extra dvgrab switches to the capture process that will run. See  `dvgrab manual <http://linux.die.net/man/1/dvgrab>`_ for more info.

Configure Screen Grab Capture
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. image:: /images/Kdenlive_Configure_screen_grab.png
   :width: 500px
   :alt: Kdenlive_Configure_screen_grab

These settings configure screen grab within **Kdenlive**. More details see :ref:`here <capturing>`.

Blackmagic
~~~~~~~~~~

.. image:: /images/Kdenlive_Configure_screen_grab_Blackmagic.png
   :width: 500px
   :alt: Kdenlive_Configure_screen_grab_Blackmagic

If you have a Blackmagic DecLink video capture card you can set here the import parameter.

Audio
~~~~~

.. image:: /images/Kdenlive_Configure_screen_grab_audio.png
   :width: 500px
   :alt: Kdenlive_Configure_screen_grab_audio

Microphone settings, either for screen :ref:`capturing` or for :ref:`capturingaudio` direct into the timeline.

.. _configure_jog_shuttle:

Jog Shuttle
-----------


Configure a connected Jog-Shuttle device. Contour ShuttlePro and Contour ShuttleXpress are known to work.

.. image:: /images/Kdenlive_Configure_jog-shuttle.png
   :width: 500px
   :alt: Kdenlive_Configure_screen_jog-shuttle


Linux
~~~~~

Ensure that your Jog-Shuttle device is connected via USB and working. An udev rule is necessary to correct the access rights to the device file: Create a file /etc/udev/rules.d/90-contour-shuttleXpress.rules with the line:


.. code-block:: bash
  
   SUBSYSTEMS"usb", ATTRS{idVendor}

.. code-block:: bash

   "0b33", ATTRS{idProduct}=="0020", MODE="0444"

for Contour ShuttleXpress or


.. code-block:: bash
  
   SUBSYSTEMS"usb", ATTRS{idVendor}

.. code-block:: bash

   "0b33", ATTRS{idProduct}=="0030", MODE="0444"

for Contour ShuttlePRO V2. Obtain the device file by a command


.. code-block:: bash

   fgrep Contour -A4 /proc/bus/input/devices

The last line of the output says


.. code-block:: bash
  
   H: Handlers=mouse0 event3

which should tell the device file to be entered into kdenlive's setting dialog: In the text field enter /dev/input/**event3** (use the last word on the line above to specify the device file in /dev/input), set the buttons and apply the changes.


.. image:: /images/KDENLIVE_Configure_jog_shuttle.png
   :width: 500px
   :alt: KDENLIVE_Configure_jog_shuttle



Enable Jog-Shuttle. For the Contour ShuttleXpress the buttons 5 - 9 are relevant, whereas Contour ShuttlePro uses all buttons. The actions for the jog- and the shuttle wheel are working as expected.

Windows
~~~~~~~

On the desktop, bottom-right opens the system tray. Right-click on the Contour icon and choose "Open control Panel". 


.. image:: /images/Contour_open-cotrol-panel.png
   :alt: Contour_open-cotrol-panel

  

In the configuration window choose under "Application setting" the program "Adobe Premiere Pro CS&amp;CC (Edit)". Then click on :menuselection:`Options --> Create new settings --> Copy contents from Current Settings`. 


.. image:: /images/Contour_new_settings.png
   :alt: Contour_new_settings

  

Then choose Kdenlive.exe in C:\Program Files\kdenlive\bin. 


.. image:: /images/Contour_Design_Choose_Aplication.png
   :alt: Contour_Design_Choose_Aplication

  

Now the basic functionality should work. Adjust the buttons of the shuttle with shortcuts as you like.

.. hint::

   You can make Kdenlive settings from scratch using :menuselection:`Options --> Create new settings --> Create Empty Settings` when creating new settings.

.. _configure_playback:

Playback
--------


Configure the Video and Audio drivers and devices. For advanced users only.


.. figure:: /images/Kdenlive_Configure_playback.png
   :width: 500px
   :alt: Kdenlive_Configure_playback

   Playback view on Windows.

.. figure:: /images/Kdenlive_Configure_playback_Linux.png
   :width: 500px
   :alt: Kdenlive_Audio_Driver_Linux

   Audio driver on Linux.

.. figure:: /images/Kdenlive_Configure_playback_MacOS.png
   :width: 500px
   :alt: Kdenlive_Audio_Driver_MacOS

   Audio driver on MAcOS.

**Audio driver**

- **Windows:** WinMM (Win7), Wasapi (Win10), DirectSound. If you have any audio issue or playback stuttering you may change to another audio driver.

In version 0.9.4 of **Kdenlive**, checking the "use Open GL for video playback" checkbox turns on the ability to have audio scrubbing available for use in the clips.  Audio scrubbing lets you hear the audio at the playhead position as you drag the playhead so you can quickly find a particular sound or event in the audio. This feature can be useful for placing the play head at the correct spot in the clip relative to an important bit of audio.

In ver 15.04 or higher, there is no "use Open GL for video playback" checkbox  - Open GL is used by default. On Windows you can set the OpenGL backend under :menuselection:`Settings --> OpenGL Backend`  

.. _configure_transcode:

Transcode
---------


This controls the :ref:`transcode` functionality. The parameters section are ffmpeg parameters. Find help on them by issuing ``ffmpeg -h`` at a command line.


.. image:: /images/Kdenlive_Configure_transcode.png
   :width: 500px
   :alt: Kdenlive_Configure_transcode



Transcode Options
~~~~~~~~~~~~~~~~~

.. list-table::
  :header-rows: 1

  * -  Option 
    -  Description 
    -  Parameters 
    -  Meanings of Parameters
  * -  Wav 48000Hz 
    -  Extract audio as WAV file 
    -  -vn -ar 48000 
    -  -vn=disable video, -ar 48000 = set audio sampling rate to 48kHz 
  * -  Remux with MKV 
    -  - 
    -  -vcodec copy -acodec copy -sn 
    -  copy the video and the audio. -sn = disable subtitles 
  * -  Remux MPEG-2 PS/VOB 
    -  Fix audio sync in MPEG-2 vob files 
    -  -vcodec copy -acodec copy 
    -  copy the video and the audio 


