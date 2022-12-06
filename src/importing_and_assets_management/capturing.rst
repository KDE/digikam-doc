.. metadata-placeholder

   :authors: - Annew (https://userbase.kde.org/User:Annew)
             - Claus Christensen
             - Yuri Chornoivan
             - Ttguy (https://userbase.kde.org/User:Ttguy)
             - Bushuev (https://userbase.kde.org/User:Bushuev)
             - Jessej (https://userbase.kde.org/User:Jessej)
             - Jack (https://userbase.kde.org/User:Jack)
             - Roger (https://userbase.kde.org/User:Roger)
             - Julius Künzel <jk.kdedev@smartlab.uber.space
             - Eugen Mohr

   :license: Creative Commons License SA 4.0

.. _capturing:

Capturing Video
===============

.. contents::


.. note::

  At least Firewire and webcam capture were removed in porting to KDE 5 due to lack of manpower.


**Kdenlive** provides functionality for capturing video from external devices; e.g., Firewire, FFmpeg, Screen Grab and Blackmagic.


You configure video capturing from :menuselection:`Settings --> Configure Kdenlive --> Capture` (more on this :ref:`configure_kdenlive`).


You define the destination location for your captures by using :menuselection:`Settings --> Configure Kdenlive --> Environment --> Default Folders` (more on this :ref:`configure_kdenlive`).


To execute a video capture, select the :ref:`monitors` and choose the capture device from the dropdown in the bottom right.


.. image:: /images/Kdenlive_Capture_video1.png
  :width: 450px
  :alt: Kdenlive_Capture_video1


Firewire
--------

.. note::

    This option is not available in recent versions of Kdenlive. Use dvgrab directly in a terminal to capture video from firewire.


This captures video from sources connected via a firewire (also known as -  IEEE 1394 High Speed Serial Bus) card and cable. This functionality uses the `dvgrab <http://linux.die.net/man/1/dvgrab>`_ program and the settings for this can be customized by clicking the spanner icon or choosing  :menuselection:`Settings>Configure Kdenlive`.  See :ref:`configure_kdenlive`.


To perform a capture:


* Plug in your device to the firewire card and turn it on to play mode


* Click the *Connect Button* 

.. image:: /images/Kdenlive_Connect_firewire_button.png
  :align: left
  :alt: Kdenlive_Connect_firewire_button

* Click the Record Button – note it toggles to grey while you are recording


* Click the Record button again to stop capture. Or click the stop button.


* Once capturing is finished, click the disconnect button 

.. image:: /images/Kdenlive_Disconnect_capture.png
  :align: left
  :alt: Kdenlive_Disconnect_capture


* In the *Captured Files* dialog, click the import button to have the captured files automatically imported into the project bin.


.. image:: /images/Kdenlive_Captured_files_dialog.png
  :align: left
  :alt: Kdenlive_Captured_files_dialog


.. note::

  If your device does not start playing the source device when you click the record button, you may have to start playback on your device manually and then click record.


FFmpeg
------

I believe this captures video from an installed Web Cam using *Video4Linux2*.

.. _screen_grab_capturing:

Screen Grab
-----------

This captures video of the PC screen.

Open screen grab: :menuselection:`View --> Screen Grab`.

Start recording: click the “record” button.  


Stop record: click the "record" button again.  


The recorded clip will be added in the project bin.


Settings can be adjusted in :ref:`configure_kdenlive`  


To check on your linux distro, type ``ffmpeg -version`` in a terminal and look for ``--enable-x11grab`` in the reported configuration info.  [1]_ 


If you are capturing the screen and using the X246 with audio settings and you get a crash as shown in the screen shot…


.. image:: /images/Kdenlive_Screen_cap_with_audio_crash.png


…then consider creating a profile for audio capture where ``-acodec pcm_s16le``  is replaced by ``-acodec libvorbis -b 320k``. See :ref:`configure_kdenlive`.


Blackmagic
----------



This is for capturing from Blackmagics `decklink <http://www.blackmagic-design.com/uk/products/decklink/>`_ video capture cards (AFAIK). Not sure how stable this code is at the moment. Mentioned in legacy Mantis bug tracker ID 2130.


Footnotes
---------



.. [1] There are now two branches of *ffmpeg*: a *Libav* branch and an ffmpeg.org branch. The *ffmpeg* version from the latter branch reports the configuration when you run with ``ffmpeg -version``. The *Libav* version does not. So this method to check for the ``--enable-x11grab`` does not work if you have the *Libav* version of *ffmpeg*.
