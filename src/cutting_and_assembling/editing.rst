.. metadata-placeholder

   :authors: - Annew (https://userbase.kde.org/User:Annew)
             - Claus Christensen
             - Yuri Chornoivan
             - Jean-Baptiste Mardelle <jb@kdenlive.org>
             - TheDiveO
             - Ttguy (https://userbase.kde.org/User:Ttguy)
             - Vincent Pinon <vpinon@kde.org>
             - Jessej (https://userbase.kde.org/User:Jessej)
             - Jack (https://userbase.kde.org/User:Jack)
             - Roger (https://userbase.kde.org/User:Roger)
             - TheMickyRosen-Left (https://userbase.kde.org/User:TheMickyRosen-Left)
             - Eugen Mohr
             - Smolyaninov (https://userbase.kde.org/User:Smolyaninov)
             - Tenzen (https://userbase.kde.org/User:Tenzen)
             - Anders Lund

   :license: Creative Commons License SA 4.0


.. _editing:

Editing
=======

.. contents::

Editing is done in the :ref:`timeline`. Add a clip by dragging it from the :ref:`project_tree` or the :ref:`monitors`. Once a clip is dropped on a track, it can be moved (drag and drop it) to another place on the same track or onto another track.


.. image:: /images/Kdenlive-addcliptotimeline.gif
   :alt: add clip to timeline

.. versionadded:: 19.08.0
   Editing with keyboard shortcuts was introduced

This will speed up the editing work and you can do editing steps that are not possible or not as quick and easy with the mouse. Working with keyboard shortcuts in 19.08 is different as in the former Kdenlive versions. Mouse operations have not changed and working as before. See `3 Point Editing`_


Seeking through your project
----------------------------

The timeline cursor shows your current position in the project. The positions of the cursors on the timeline ruler and Project Monitor are always in sync. Position can be moved in the following ways:


* Keyboard shortcut: right / left arrows for one frame, Shift+ right / left for 1 second


* Clicking/dragging in the :ref:`timeline` or in an empty area of the timeline. 


* Clicking/dragging in the :ref:`monitors` ruler. 


* Rotating the mouse wheel while the pointer is over the :ref:`timeline` or over the :ref:`monitors` 


* Editing the timecode in the :ref:`monitors`  timecode widget


* Clicking the up or down arrows on the :ref:`monitors` timecode widget


Cutting a clip
--------------

To cut a clip, the easiest way is to place the timeline cursor where you want to cut the clip, then select the clip (left click in it) and use the menu :menuselection:`Timeline --> Current Clip --> Cut Clip` (default shortcut: :kbd:`Shift + R`).


Or  :menuselection:`Right Click --> Cut Clip`


Alternatively - use the `Spacer Tool`_.


Resizing a clip
---------------

A clip can be resized from its start or end by dragging its left or right edge. If you want a more precise resize, you can place the timeline cursor wherever you want the resize to end and use the menu :menuselection:`Timeline --> Resize Item Start` (default shortcut: :kbd:`(` or :menuselection:`Timeline --> Resize Item End` (default shortcut: :kbd:`)`)


To even more precisely control the length of a clip, double click it in the timeline and adjust its duration using the **Clip duration** dialog. You can have frame-level accuracy with this method.


.. image:: /images/kdenlive_timeline_current_clip_duration02.png
   :alt: clip duration


You can also resize a clip by cutting it with the  `Razor Tool`_ and then deleting the bit you do not want.

.. versionadded:: 19.08

Adjust AV clips independently with :kbd:`Shift + resize` to resize only audio or video part of a clip. 

:kbd:`alt + Move` in timeline allows to move the audio or video part to another track independently.

.. image:: /images/av-metamove.gif
   :alt: av-metamove

.. _change_speed_of_a_clip: 

Change speed of a clip
----------------------

.. versionadded:: 19.08

.. image:: /images/adjustspeed.gif
   :alt: adjustspeed

Adjust the speed of a clip by pressing :kbd:`CTRL + dragging` a clip in the timeline.

Doing with right click on the clip see :ref:`change_speed`. 


Removing Space Between Clips
----------------------------

Right click in the space between the clips and choose :menuselection:`Remove Space`. Be aware however that if you have clips on multiple tracks in the timeline and they are not grouped, then removing space may disturb the alignment of the clips between the different tracks – the space is only removed from the timeline where you clicked.  Under this situation it may be safer to use the `Spacer Tool`_.


.. image:: /images/Kdenlive-removespace.gif
   :alt: remove space

.. _timeline_toolbar:

Timeline Toolbar
----------------

There is a toolbar between monitors and the timeline that controls various aspects of the editor. 


.. image:: /images/Kdenlive-middle-toolbar.png
   :alt: Middle Toolbar ver  21.04


1.  `Track Compositing`_ drop down.

.. versionchanged:: 22.08

.. image:: /images/Kdenlive-enable-track-composition.png
   :alt: Kdenlive-enable-track-composition

Track compositing is now a simple checkbox instead of the deprecated none/high resolution choice.

When enabled Kdenlive is set to :ref:`track_compositing_hq`

When disabled Kdenlive is set to :ref:`track_compositing_none`

.. deprecated:: 22.08

1a, 1b and 1c cannot be selected anymore.   

   1a. :ref:`track_compositing_none`

   1b. :ref:`track_compositing_preview`

   1c. :ref:`track_compositing_hq`

1d. **Mixed Audio tracks** changes the order in which tracks are displayed to mixed audio and video tracks.  For example, from the bottom of the timeline to the top of the timeline: A1, V1, A2, V2, A3, V3

1e. **Split Audio tracks** changes the order in which tracks are displayed to separate audio and video tracks.  For example, from the bottom of the timeline to the top of the timeline: A1, A2, A1, V1, V2, V3

1f. **Split Audio tracks (reverse)** changes the order in which tracks are displayed to separate audio and video tracks with the audio tracks in reverse order.  For example, from the bottom of the timeline to the top of the timeline: A1, A2, A3, V1, V2, V3

2. **Timeline Edit Mode**  Drop Down. These same settings can be found under the :menuselection:`Tool` menu.

2a. **Timeline Normal Mode**

2b. **Timeline Overwrite Mode**

2c. **Timeline Insert Mode**

3. Use timeline zone |timeline-use-zone-on| / Do not use timeline zone |timeline-use-zone-off| for insert (toggles). See ::ref:`insert_overwrite_advanced_timeline_editing` for more details.


**Tool Group** (one of these 3 can be active)

Active buttons are grey.


4. `Selection Tool`_ - Also selected with the 'S' hotkey.  Allows the selection and manipulation of clips on the timeline

5. `Razor Tool`_ - Also selected with the 'X' hotkey, or to cut at the point of the play head use "Shift-R". This allows a clip to be cut into two clips.

6. `Spacer Tool`_ - Also selected with the 'M' hotkey.  This tool will select all clips at one point in the timeline and allow them to be shifted at once.

7. Position indicator - displays the time point or frame number of the location of the hovering mouse on the left side, and the total length of the project on the right side.

7a. **hh:mm:ss:ff;** Sets the position indicator to display time units

7b. **Frames** Sets the position indicator to display frames

8. **Mix Clips** - allows same-track transitions to be applied between two clips. See :ref:`same_track_transition` for a detailed explanation.

9. Insert Clip Zone in Timeline. See :ref:`insert_overwrite_advanced_timeline_editing` for more details.

10. Overwrite Clip Zone in Timeline. See :ref:`insert_overwrite_advanced_timeline_editing` for more details.

11. Extract Timeline Zone

12. Lift Timeline Zone

13. Favourite Effects

14. Start Preview Render

14a. Stop Preview Render

14b. Add Preview Zone

14c. Remove Preview Zone

14d. Remove All Preview Zones

14e. Automatic Preview

14f. Disable Timeline Preview

14g. Manage Cached Data

.. versionadded:: 22.04

   .. image:: /images/preview_using_proxy_clips.png
      :alt: Preview Using Proxy Clips

   14h. Preview Using Proxy Clips. Option to render preview using original clips, not proxies (disabled by default). 


Items 14, 14a-14g are covered in detail by :ref:`timeline-preview-rendering` article.

1.  Show/Hide the :ref:`audio_mixer` tool.  The audio mixer tool allows audio to be managed in the project.

2.  Show/Hide the :ref:`subtitle` Tool.  This will show or hide the subtitle track where subtitles can be created or edited in the project.

.. _timeline_edit_modes:

Track Compositing
-----------------

.. partly moved from https://kdenlive.org/en/project/timeline-track-compositing/

The track compositing applies uniformly to all tracks in your timeline.

.. tip::

  Under certain compositing conditions, if you see the outcome of a transition not to be what you would expect, try to switch track compositing off for a quick check. If the oddity is gone, then this is an interference between the automatic timeline track compositing and your user transitions.

.. versionchanged:: 22.08

Track compositing is now a simple checkbox instead of the none/high resolution choice.

.. _track_compositing_hq:

High Quality
~~~~~~~~~~~~

When track compositing is set to High-Quality tracks with alpha channel information will be automatically composited with the other tracks using an algorithm that is somewhat slower than the algorithm used with :ref:`track_compositing_preview` but which retains higher fidelity color information.

.. _track_compositing_none:

None
~~~~

When Track Compositing is set to None you will not get tracks with alpha channel information to composite with the other tracks unless an explicit composite or affine transition is added between the clips. This is basically kind of an expert mode when you need full control over any compositing in your timeline.

.. _track_compositing_preview:

Preview
~~~~~~~

.. deprecated:: 21.08

.. note::

    Final rendering always uses either **High Quality** or **None**. So Preview quality is, well, for preview only.

When track compositing is set to Preview tracks with alpha channel information will be automatically composited with the other tracks using an algorithm that is somewhat faster than the algorithm used with :ref:`track_compositing_hq` but which slightly degrades the colors.

Timeline Edit Modes
-------------------

.. _timeline_normal_mode:

Normal Mode
~~~~~~~~~~~

In this edit mode, you can not drag clips on top of other clips in the same track in the timeline. You can drag them to another track in the timeline but not into the same track at the same time point as an existing clip. Contrast this to overwrite mode.

.. _timeline_overwrite_mode:

Overwrite Mode
~~~~~~~~~~~~~~

In this edit mode, you can drag a clip onto a track where there is an existing clip and the incoming clip will overwrite that portion of the existing clip (or clips) covered by the incoming clip.


.. figure:: /images/kdenlive_overwrite_mode_before01.png
   :alt: kdenlive_overwrite_mode_after01
   
   Before


.. figure:: /images/kdenlive_overwrite_mode_after01.png
   :alt: kdenlive_overwrite_mode_after01
   
   After


In the "After" screenshot above, you can see that the clip which was dragged from the upper track has replaced a portion of the clip on the lower track.


**Rearrange clips in the timeline**


Performing a rearrange edit. This technique lets you quickly change the order of clips in the timeline.

.. image:: /images/Overwrite-mode.gif
   :alt: Overwrite-mode
 

Drag a clip, as you drop it to a new location performs an overwrite edit that overwrites the existing clip.

.. _timeline_insert_mode:

Insert Mode
~~~~~~~~~~~

With this mode selected and you drop a selection into the timeline the selection will be inserted into the timeline at the point where the mouse is released. The clip that the selection is dropped on is cut and clips are moved to the right to accommodate the incoming clip.


.. figure:: /images/Kdenlive_Insert_mode0before.png
   :alt: Kdenlive_Insert_mode0before
   
   Before


.. figure:: /images/Kdenlive_Insert_mode1before.png
   :alt: Kdenlive_Insert_mode1before
   
   During


.. figure:: /images/Kdenlive_Insert_mode1after.png
   :alt: Kdenlive_Insert_mode1after
   
   After. Incoming Clip inserted. Clips after the insert point are shifted Right


**Rearrange edit in the timeline**

Performing a rearrange edit. Only clips in the destination track are shifted; clips in other tracks are not affected. This technique lets you quickly change the order of clips in the timeline. 

It always closes all space in the track.

.. image:: /images/Insert-mode.gif
   :alt: Insert-mode
   
Drag a clip, as you drop it to a new location. Releasing the clip performs an insert edit that shifts clips in the destination track only.

.. _timeline_edit_tools:

Timeline Edit Tools
-------------------

Selection Tool
~~~~~~~~~~~~~~

Use this to select clips in the timeline. The cursor becomes a hand when this tool is active. 


Razor Tool
~~~~~~~~~~
 
Use this to cut clips in the timeline. The cursor becomes a pair of scissors when this tool is active.

:kbd:`ESC`: Return from any tools back to Selection tool.

Spacer Tool
~~~~~~~~~~~

Use this tool (|distribute-horizontal|) to temporarily group separate clips and then drag them around the timeline to create or remove space between clips. Very useful. Experiment with this tool to see how it works.


.. image:: /images/Kdenlive_Spacer_tool_crop.png
   :alt: spacer tool crop
   :width: 300px


In the above example, these clips are not grouped. However, the spacer tool groups them temporarily for you so you can move them all as a group.

:kbd:`ESC`: Return from any tools back to Selection tool.

.. versionadded:: 21.12

Slip Tool
~~~~~~~~~

.. image:: /images/slip_trim02.jpg
   :alt: slip tool

Slip keeps the original duration of the clip. Like working with old film material: beneath the given "window" of the clip length it slips the film strip back and forth.

.. image:: /images/slip.gif
   :alt: slip tool in action

Use Slip (|kdenlive-slip|) to trim, in a single operation, the IN and OUT points of a clip forward or backward by the same number of frames, while keeping the original duration and without affecting adjacent clips.

You can slip multiple clips at once now: select all clips you want to slip with the selection tool using :kbd:`Shift` then enable the slip tool and go ahead…

Slip can be done with the mouse, with the :kbd:`arrow` keys and with the buttons on the monitor toolbar.

:kbd:`ESC`: Return from any tools back to Selection tool. 

Ripple Tool
~~~~~~~~~~~

.. image:: /images/ripple-trim.png
   :alt: ripple tool

Ripple changes the original duration of the clip. Like working with old film material: You lengthen or shorten the film strip and move the adjacent clips back and forth as you do that.

Use Ripple (|kdenlive-ripple|) to trim a clip and shift following clips in the track by the number of frames you trim. When you shorten a clip by this action all clips that follow the cut shift back in time, contrariwise, when you extend a clip the clips after the cut shift forward in time. If an empty space is on the track it behaves as a clip and it shifts in time as a standard clip would be.

You can Ripple only a single clip at once.

Ripple can be done with the mouse only.

:kbd:`ESC`: Return from any tools back to Selection tool.

Multicam Tool
~~~~~~~~~~~~~

.. image:: /images/multicam.gif
   :alt: multicam tool
   
Add your clips in different tracks, but at the same position in the timeline and activate the multicam tool by going to menu :menuselection:`Tool -> Multicam tool`. You may trim the clips in the desired track while the timeline is playing by pressing their corresponding numbers (for track V1, press key :kbd:`1`; for track V2 press key :kbd:`2`, etc…) or simply select the desired track in the project monitor by clicking on it with the mouse.

Select multicam tool will switch on the multitrack view in the project monitor and set a marker at the current timeline position. You can then seek/play to the wanted position, click on a track view in the project monitor and it will lift all tracks except for the previously active track. You can then repeat seek and click in another track to continue lifting tracks.

It doesn't stop playing when you perform the operation to avoid to lose the rhythm and to work as you are working during a live broadcasting. If you need to correct the editing you can manually stop and trim the cut as you do when you video editing as normal.

The audio tracks is not involved in the process as you generally use only one audio track (the one which come from the main mixer to which the other ones are synced to)

:kbd:`ESC`: Return from any tools back to Selection tool.


.. _status_bar:

Status Bar
----------

.. image:: /images/Kdenlive_Bottom_toolbar17_04b.png
   :alt: Bottom toolbar ver 17.04

24. `Split Audio and Video Automatically`_

25. `Automatic Transitions`_

26. `Show Video Thumbnails`_

27. `Show Audio Thumbnails`_

28. `Show marker comments`_

29. `Snap`_

30. `Fit Zoom to Project`_

31. Zoom Out

32. `Zoom Project`_

33. Zoom In


Split Audio and Video Automatically
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

When this is on and you drag a clip to the timeline, the audio in the clip will end up on an audio track and the video on a video track. You can achieve the same result if you select the clip, :ref:`right_click_menu`, :menuselection:`Split Audio`.  When this is off and you drag a clip onto the timeline, both the audio and video tracks are combined into one video track.


Automatic Transitions
~~~~~~~~~~~~~~~~~~~~~

When active any transitions added to the timeline will have the automatic transition option checked by default.
See :ref:`transitions`


Show Video Thumbnails
~~~~~~~~~~~~~~~~~~~~~

When on, the video clips in the timeline will contain thumbnails as well as a filename. Otherwise, they just have the clip filename.

When the timeline is zoomed in to the maximum, the video track will show a thumbnail for every frame in the clip. When the timeline is not on maximum zoom, the video track will show a thumbnail for the first and last frame in the clip.


Show Audio Thumbnails
~~~~~~~~~~~~~~~~~~~~~

When on, the audio clip will have a wave representation of the audio data as well as a filename.  Otherwise, they just have the clip filename.


Show marker comments
~~~~~~~~~~~~~~~~~~~~

This toggles on and off the display of the comments saved within :ref:`clips` (the text with the gold background in the example below) and within :ref:`guides` (the text with the purple background).

.. image:: /images/Kdenlive_Markers_and_guides_crop.png
   :alt: markers and guides


Snap
~~~~

When this feature is on, dragging the beginning of one clip near to the end of another will result at the end of the first clip snapping into place to be perfectly aligned with the beginning of the second clip. As you move the two ends near to each other, as soon as they get within a certain small distance, they snap together so there is no space and no overlap. Note that this occurs even if the clips are on different tracks in the timeline.


Clips will also snap to the cursor position, markers and :ref:`guides`.


Fit Zoom to Project
~~~~~~~~~~~~~~~~~~~

This will zoom the project out so that it all fits in the timeline window. This is the same function that is triggered by :ref:`timeline_menu` Menu item, :menuselection:`Fit Zoom to Project`.


Zoom project
~~~~~~~~~~~~

The magnifying glasses zoom in or out on the timeline. The slider adjusts the zoom by large increments. These same settings are controlled by the :menuselection:`Timeline` menu items, :menuselection:`Zoom In` and :menuselection:`Zoom Out`.


Cutting Footage from multiple aligned tracks - Ripple Delete
------------------------------------------------------------

This is available on the :menuselection:`Timeline` menu under :menuselection:`All clips --> Ripple Delete`  [1]_ .


**Seems missing in Kdenlive 17.04 & 18.04**

Mark In and Out points in the Project Monitor, then choose :menuselection:`Timeline --> All clips --> Ripple Delete` (or :kbd:`Ctrl + X`).  Kdenlive deletes all footage between the In and Out points in unlocked tracks, slides everything else back to fill the gap, and puts the playhead on the In point.


3 point editing
---------------

.. versionadded:: 19.08.0

3 important points to understand the 3 point editing concept (with keyboard shortcuts): 


Source
~~~~~~

.. figure:: /images/3p-Source-1.gif
   :align: right
   :alt: 3point source
   :width: 200px

On the left of the track head the green vertical lines (V1 or A2). The green line is connected to the source clip in the project bin. Only when a clip is selected in the project bin, the green line shows up depending on the type of the clip (A/V clip, picture/title/color clip, audio clip).

.. rst-class:: clear-both

Target
~~~~~~

.. figure:: /images/3p-Target-active-1.gif
   :align: right
   :alt: 3point target
   :width: 200px

In the track head the target V1 or A1 is active when it’s yellow. An active target track reacts to edit operations like insert a clip even if the source is not active.


**The concept is like thinking of connectors**

Connect the source (the clip in the project bin) to a target (a track in the timeline). Only when both connectors on the **same** track are switched on the clip “flow” from the project bin to the timeline.


.. important::

    Active target tracks without connected source react on edit operations.

Examples of advanced edit
~~~~~~~~~~~~~~~~~~~~~~~~~

Here is a brief introduction to the 3 point editing system.

.. figure:: /images/3p-Insert-clip-1.gif
   :align: right
   :alt: 3point insert
   :width: 200px
  
1. Select a clip in the project bin with an up/down arrow

2. Navigate the clip by the :kbd:`JKL` keys or by the :kbd:`left/right` arrows and set the IN and the OUT point by the :kbd:`I` and :kbd:`O` keys.

3. Hit :kbd:`T` to change to the timeline

4. Select a video or audio track in the timeline (up/down arrow key) and set it as source with :kbd:`Shift + T`.

5. Activate the track as a target with shortcut :kbd:`A` (this connects the track to the source)

6. Hit :kbd:`V` (insert) or :kbd:`B` (overwrite) to add the clip at the play-head position or to fill the selected area in the timeline if it is active. If you need to activate it use the :kbd:`G` key.

.. container:: clear-both

   .. figure:: /images/3p-Advanced-edit-1.gif
      :align: right
      :alt: 3point edit
      :width: 200px

   In the following example, we want only to insert the audio part of a clip in A2 and we want to create a gap in all the other video and audio tracks:

   1. Activate all the target tracks which contain clips (yellow buttons).

   2. Activate just the audio source on A2

   3. Press :kbd:`V` (insert).

.. container:: clear-both

   .. [1] available on bleeding edge version > 0.9.10 (Jan2015)
