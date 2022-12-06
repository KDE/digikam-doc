.. meta::
   :description: Clip monitor and project monitor in Kdenlive video editor
   :keywords: KDE, Kdenlive, clip, project, monitor, overlay, resizing, zoombar, preview, toolbar, documentation, user manual, video editor, open source, free, learn, easy

.. metadata-placeholder

   :authors: - Julius Künzel <jk.kdedev@smartlab.uber.space
             - Eugen Mohr

   :license: Creative Commons License SA 4.0

.. toctree::
   :hidden:
   :maxdepth: 2
   :glob:

   monitors/*

.. _monitors:

Monitors
========

Kdenlive uses 2 monitor widgets to display your videos: Clip Monitor and Project Monitor. A third monitor - the Record Monitor - previews video capture. These monitors can be selected by clicking the corresponding tabs which appear at the bottom of the monitor window.

Resizing the Monitors
---------------------

You can resize the monitors by dragging the sizing widget. It is a bit tricky to find the bottom widget. You need to hover just between the bottom of the monitor tab and the timeline 

.. image:: /images/Kdenlive_Scale_project_monitor.png
   :alt: Kdenlive_Scale_project_monitor

.. _monitor_zoombar:

Monitor zoombar
---------------

.. versionadded:: 20.08.0

The Monitors get zoom bars. To activate: hover over the timeline ruler and :kbd:`CTRL + Mouse wheel`. 

.. image:: /images/clip-monitor-zoombar.gif
   :alt: clip-monitor-zoombar

.. versionadded:: 19.04.0

Support for external monitor display using Blackmagic Design decklink cards. 

.. _monitor_toolbars:

Monitor toolbar
---------------

.. versionadded:: 19.04.0 

.. image:: /images/Monitors.gif
   :alt: Monitors

Support multiple guide overlays. Move with the mouse to the upper-right corner of the monitor to access the toolbar. 

.. versionadded:: 22.08.0

The color of the guide overlays can be changed. See :ref:`monitor_toolbars`    

.. _preview_resolution:

Preview resolution
------------------

.. versionadded:: 20.04.0 

.. image:: /images/Preview.gif
   :alt: Preview

Preview resolution speeds up the editing experience by scaling the video resolution of the monitors. It can be used of proxies instead.

.. _clip_monitor_overview:

Clip Monitor
------------

The Clip monitor displays the unedited clip that is currently selected in :ref:`project_tree`. 

.. image:: /images/Clip_monitor2.png
   :alt: Clip_monitor2

Widgets on the Clip Monitor
~~~~~~~~~~~~~~~~~~~~~~~~~~~

0) **Insert Zone In Project Bin** button - click this to add the current zone to the project bin. The selected zone will appear as child clip in the project bin - like the clip shown as Zone1 in the screen shot.

1) **Set zone start** button - click this to set an 'in' point.

2) **Set zone end** button - click this to set an 'out' point.

3) Zone duration indicator - selected by setting in and out points. Dragging the clip from the clip monitor to the timeline when there is a selected zone causes the selected zone, not the entire clip, to be copied to the timeline.

4) Position Caret - can be dragged in the clip. (In ver >=0.9.4 and with OpenGL turned on in :menuselection:`Settings --> Configure Kdenlive --> Playback`, audio will play as you drag this.)

5) Timecode widget - type a timecode here and hit :kbd:`Enter` to go to an exact location in the clip. Timecode is in the format *hours:minutes:seconds:frames* (where frames will correspond to the number of frames per second in your project profile).

6) Timecode arrows - can be used to change the current position of the clip in the clip monitor.

.. _clip_monitor_hamburger:

Hamburger menu
~~~~~~~~~~~~~~

.. image:: /images/Clip_monitor_hamburger.png
   :alt: Clip_monitor_hamburger


Creating Zones in Clip Monitor
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Zones are defined regions of clips that are indicated by a colored section in the clip monitor's timeline - see item 3 above. The beginning of a zone is set by clicking **[** (item 1 in the pic above). The end of a zone is set by clicking **]** (item 2 in the pic above)

Clip Monitor Right-click menu
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The Clip Monitor has a right-click (context) menu as described :ref:`here <clip_monitor_rightclick>`.

Seeking
~~~~~~~

.. versionadded:: 20.08.0

Inside the clip monitor: hold down :kbd:`Shift` and move the mouse left/right. 

.. _drag_audio_or_video_into_timeline:

Drag audio or video only of a clip in timeline
----------------------------------------------

.. versionadded:: 19.04.0

.. image:: /images/Clip_monitors_AV-selection.gif
   :alt: Clip_monitors_AV-selection

Move with the mouse to the lower-left corner of the clip monitor to access the Video/Audio icons. Hover with the mouse either over the audio or video icon left click to drag either video or audio part into the timeline. 

.. _project_monitor_overview:

Project Monitor
---------------

The Project Monitor displays your project's timeline - i.e. the edited version of your video. 

.. image:: /images/Project_monitor.png
   :alt: Project_monitor

Project Monitor Widgets
~~~~~~~~~~~~~~~~~~~~~~~

1) The position caret. Shows the current location in the project relative to the whole project. You can click and drag this to move the position in the project.

2) The timecode widget. You can type a timecode here and press :kbd:`Enter` to bring the Project Monitor to an exact location.

3) Timecode widget control arrows. You can move the Project Monitor one frame at a time with these.

.. _project_monitor_hamburger:

Hamburger menu
~~~~~~~~~~~~~~

.. image:: /images/Project_monitor_hamburger.png
   :alt: Project_monitor_hamburger


Creating Zones in Project Monitor
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

You can use the **[** and **]** buttons to create a zone in the Project Monitor the same way you make zones in the clip monitor. The zone will be indicated by a colored bar both on the timeline and underneath the Project Monitor. 

.. image:: /images/Kdenlive_Zone_in_project_monitor.png
   :alt: Kdenlive_Zone_in_project_monitor

You can get Kdenlive to only render the selected zone - see :ref:`remder_using_zone`.

Project Monitor Right-click menu
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The project monitor has a right-click (context menu) as described :ref:`here <project_monitor_rightclick>`.

.. _multicam_editing:

Multicam Editing
----------------

.. versionadded:: 20.04.0

Enable the multirack view via menu :menuselection:`Monitor --> Multitrack view`. 

.. image:: /images/Multicam0.gif
   :alt: Multicam

New multicam editing interface allows you to select a track in the timeline by clicking on the project monitor.

.. _separate_monitors:

Separate Clip and Project Monitors
----------------------------------

You can click on the Tab names that label the Monitors and drag the monitor out into its own window. 

.. image:: /images/Kdenlive_monitors_seperate_with_dec.png
   :alt: Kdenlive_monitors_seperate_with_dec

To put the monitors back into the Tabbed view - click on the monitor's title bar and drag the window on top of the other monitor window.

If the monitor has no title bar (intermittent defect) then you can not do this and you will need to reset kdenlive settings by deleting ~/.config/kdenliverc 