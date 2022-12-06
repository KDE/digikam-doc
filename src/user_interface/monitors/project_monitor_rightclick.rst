.. meta::
   :description: Do your first steps with Kdenlive video editor
   :keywords: KDE, Kdenlive, quick start, first steps, documentation, user manual, video editor, open source, free, learn, easy, monitor, play, zone, loop, go to, extract frame

.. metadata-placeholder

   :authors: - Claus Christensen
             - Yuri Chornoivan
             - Ttguy (https://userbase.kde.org/User:Ttguy)
             - Eugen Mohr
             - Maris Stalte (https://userbase.kde.org/User:limerick)

   :license: Creative Commons License SA 4.0

.. _project_monitor_rightclick:

Project Monitor - Right Click menu
==================================

These are the menu items that are available when you right click a clip in the :ref:`monitors`. These actions effect the clip that is currently selected in the timeline. Similar menu items are available from a Right click menu in the clip monitor. However clip monitor menu items effect the currently selected clip on the project bin.

.. contents::


Play...
-------

Play
~~~~

Plays the clip currently selected in the project bin


Play Zone
~~~~~~~~~

Plays the current zone and stops. 


Loop Zone
~~~~~~~~~

Plays the current zone in a continuous loop.


Loop Selected Clip
~~~~~~~~~~~~~~~~~~


Go To
-----

Go to Project Start
~~~~~~~~~~~~~~~~~~~

When this item is selected from Project Monitor it goes the beginning of the project.


Go to Previous Snap Point
~~~~~~~~~~~~~~~~~~~~~~~~~

Moves the clip position to the previous :ref:`editing` Point. Snap points are sections in clips that other clips snap to when "Snap" is turned on.

Snap points include markers, zone in-points, zone out-points, guides, transition start points etc


Go to Zone Start
~~~~~~~~~~~~~~~~

Goes to the start of the Zone.  


Go to Next Snap Point
~~~~~~~~~~~~~~~~~~~~~

Moves the clip position to the next :ref:`editing` Point. Snap points are sections in clips that other clips snap to when "Snap" is turned on.

Snap points include markers, zone in-points, zone out-points, guides, transition start points etc


Go to Project End
~~~~~~~~~~~~~~~~~

When this item is selected from Project Monitor it goes the end of the project. 


Extract frame
-------------

Extracts the frame currently in the project monitor as a .PNG image which you can save to the file system.

Example how to extract frame
----------------------------
Kdenlive sends that frame to the stills gallery, which includes the image and the node structure. You can see if you display node graph by right-clicking, which is helpful to copy and paste adjustments for other clips.

.. image:: /images/image27.png
   :width: 350px
   :alt: extract frame

Click export, name it something logical, pick a safe location on your computer and change the format down below to png.

.. image:: /images/image28.png
   :width: 350px
   :alt: save extracted frame

Split View
----------

Selecting this allows you to view all the video tracks at once in split screen in the project monitor. See picture.


.. image:: /images/Kdenlive_Split_view.png
   :width: 350px
   :alt: split view


Monitor overlay infos
---------------------

.. image:: /images/monitor_overlay.png
   :width: 350px
   :alt: monitor overlay

4 different monitor overlays help you to show you more information about your videos. These overlays will not be rendered to the final video.


Real time (drop frames)
-----------------------

Setting this to the Checked state means the clip monitor will drop frames during playback to ensure the clip plays in real time. This does not effect the final rendered file - it just effect how the clip appears when being previewed in the clip monitor

