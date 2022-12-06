.. meta::
   :description: Timeline, central part of Kdenlive video editor
   :keywords: KDE, Kdenlive, timeline, track, configure, navigation, working, documentation, user manual, video editor, open source, free, learn, easy

.. metadata-placeholder

   :authors: - Annew (https://userbase.kde.org/User:Annew)
             - Claus Christensen
             - Yuri Chornoivan
             - Jean-Baptiste Mardelle <jb@kdenlive.org>
             - Ttguy (https://userbase.kde.org/User:Ttguy)
             - Bushuev (https://userbase.kde.org/User:Bushuev)
             - Jack (https://userbase.kde.org/User:Jack)
             - Roger (https://userbase.kde.org/User:Roger)
             - Carl Schwan <carl@carlschwan.eu>
             - Eugen Mohr
             - Tenzen (https://userbase.kde.org/User:Tenzen)

   :license: Creative Commons License SA 4.0

.. _timeline:

Timeline
========

.. contents::

.. figure:: /images/Kdenlive_timeline.png
  :width: 450px
  :align: left
  :alt: Timeline pane

The timeline is the central part of **Kdenlive**. It is made of 4 different areas (see screenshot).


1 - **Track resizing icon**. This icon allows you to adjust the track height in the timeline from normal to small.  This does not affect the video or the render in any way.  The default height of tracks can be configured in **Kdenlive's** :ref:`configure_kdenlive` dialog.


2 - **Timeline ruler**. This shows the time in frames or in hh:mm:ss notation. The area highlighted in green is called the selection zone, and is useful if you want to render only a part of your project. Left-clicking in the timeline ruler will move the :ref:`timeline` and seek to that position. The Timeline ruler context menu allows you to manage :ref:`guides`.


3 -  **Track header**. This box shows some options for a track. First is the track name (Main Video Track in the screenshot). That name can be changed by simply clicking in it. Below are icons to

   * :menuselection:`Lock the track` |kdenlive-lock| which will prevent adding clips, removing clips, or moving of clips on the timeline;
   * :menuselection:`Mute the track` |kdenlive-hide-audio|
   * :menuselection:`Hide video` |kdenlive-hide-video| from this track; and,
   * :menuselection:`Enable/Disable track effects` |tools-wizard| allows you to enable or disable the effects applied to the track.
   * Right clicking in the track header will give you a context menu allowing to manage (add / delete) tracks. See :ref:`configure tracks <configure_tracks>`


4 - The track itself, this is where you can drop your clips.



Zoombars
--------

.. versionadded:: 21.04.0

.. container:: clear-both

   .. image:: /images/Zoom-bar.gif
      :align: left 
      :alt: Zoom-bar

   Besides the availability of zoombars in the monitor and keyframe scroll bars, zoombars are now available in the timeline as well. You can easily zoom in/out in the timeline by dragging the edges of the timeline scrollbar. (Vertical zoombars coming soon.) Recommend playing this video in full-screen mode.

Key binding information
-----------------------

.. versionadded:: 21.04.0

.. container:: clear-both

   .. image:: /images/Context-and-keybinds.gif
      :align: left 
      :alt: context-and-keybinds

   Key binding info has been added on the left while context item information has been moved to the right of the :ref:`status_bar`. Recommend playing this video in full-screen mode.


Timeline visuals
----------------

.. versionadded:: 21.04.0

The timeline got a visual overhaul with more and better looking guides/marker colors, the guides have been moved above the timeline ruler while preview and zone bars have been moved below.


.. image:: /images/timeline-overhaul.png
   :alt: timeline_overhaul
  
Before (above) and after (below)

.. rst-class:: clear-both

Split Audio/Video
-----------------

.. versionadded:: 19.04.0

.. image:: /images/splitAV.gif
   :alt: splitAV

   
The way timeline tracks work has changed. Each track is now either audio or video, and will only accept audio and video clips respectively. When dragging an AV clip from the project bin in the timeline, the clip will be automatically split, the video part going on a video track, and the audio part on an audio track.


The separation of audio/video is important for implementing :ref:`same-track-transitions <same_track_transition>`.


Timeline Cursor/Position Caret/Playhead
---------------------------------------

.. container:: clear-both

   .. image:: /images/kdenlive_timeline_playhead.png
      :width: 450px
      :align: left
      :alt: timeline playhead

   This indicates the position we are displaying in the :ref:`monitors`. You can scroll the position by dragging the Timeline cursor (a.k.a Position Caret or Playhead). 

   Beginning with version 0.9.4, dragging the timeline cursor will play the audio of the clip (a.k.a. Audio Scrubbing).  This feature only works if you have checked :menuselection:`Use Open GL for video display` in :ref:`configure_kdenlive`.

.. rst-class:: clear-both

Tracks
------

The timeline is made of tracks. There are two kinds of tracks: audio and video. The number of tracks is defined when creating a new project in the :ref:`project_settings`. Adding a clip in timeline can be achieved by dragging it from the :ref:`project_tree` or the :ref:`monitors`. More about tracks see :ref:`tracks`


Resizing tracks
~~~~~~~~~~~~~~~

.. versionadded:: 19.04.0


.. image:: /images/resize-tracks.gif
   :alt: resize-tracks
  


Tracks can be individually resized. (Holding down :kbd:`Shift` makes all video or audio tracks change in height simultaneously.) 


.. image:: /images/layout-modes.gif
   :alt: layout-modes
  


Switch live between two different layout modes (Mixed or Split).

Keyboard Navigation
~~~~~~~~~~~~~~~~~~~

.. versionadded:: 19.04.0

.. image:: /images/shift-g.gif
   :alt: shift-g

You now have the possibility to move clips and compositions with your keyboard. To do it, select a clip in timeline and use the :guilabel:`Grab Current Item` (:kbd:`Shift + G`) function from the :menuselection:`Timeline` menu.

.. image:: /images/moving-keyframes.gif
   :alt: moving-keyframes

You can then move the item with your arrow keys. Keyframes can also be moved individually. Just click on a keyframe in timeline, then move it left/right with :kbd:`arrows`, change its value with :kbd:`+` and :kbd:`-`. :kbd:`Alt + arrow` to go to another keyframe.

Keyframe handling
~~~~~~~~~~~~~~~~~

.. versionadded:: 19.04.0

.. image:: /images/keyframe-improvements.gif
   :alt: keyframe-improvements

* Add a new keyframe by double clicking in timeline.
* You can move a keyframe without altering its value by using the vertical line that appears when you are above or below a keyframe.
* Remove a keyframe by dragging it far above or below the clip limits.

.. _configure_tracks:

Configurable tracks
~~~~~~~~~~~~~~~~~~~

.. versionadded:: 19.04.0

.. container:: clear-both

   .. image:: /images/Configurable_thumbnails.png
      :align: left
      :alt: Configurable_thumbnails
  
   **Video track:** You can choose to display between:
   
   - :guilabel:`In frame`
   
   - :guilabel:`In/Out frames`
   
   - :guilabel:`All frames` or 
   
   - :guilabel:`No thumbnails`.

.. container:: clear-both

   .. image:: /images/audio-track_right-click.png
      :align: left
      :alt: audio-track_right-click

   **Audio track:** You can enable:
   
   - :guilabel:`Show Record Control` to record audio direct into the track. More details see :ref:`audio-recording`.
   
   - :guilabel:`Separate Channels` to see each channel of an audio track (i.e stereo, 5.1)
   
   - :guilabel:`Normalize Audio Thumbnails` maximize the audio level peak to -3dB.   

.. rst-class:: clear-both

Disabling individual clips
--------------------------

.. versionadded:: 19.04.0

.. container:: clear-both

   .. image:: /images/Disabling_individual_clips.png
      :align: left
      :alt: Disabling_individual_clips
  
   Individual clips can be disabled while still in the timeline but with no audio and no video – (works for all clip types). Right-click on the clip and choose :guilabel:`Disable clip` or :guilabel:`Enable clip`.

.. rst-class:: clear-both

.. _loop_playback:

Continuously loop playback
--------------------------

- Disable :guilabel:`Pause playback when seeking` in :ref:`configure_timeline` settings (:menuselection:`Settings --> Configure Kdenlive --> Timeline`). 
- Make a timeline zone the length you like to loop.
- Loop Zone (:kbd:`Ctrl + Shift + Space`)


.. toctree::
   :maxdepth: 1
   :caption: See also:

   menu/timeline_menu
