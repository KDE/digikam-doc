.. metadata-placeholder

   :authors: - TheDiveO
             - Eugen Mohr
             
   :license: Creative Commons License SA 4.0

.. moved from https://kdenlive.org/en/project/insert-overwrite-advanced-timeline-editing/   

.. _insert_overwrite_advanced_timeline_editing:

Insert and Overwrite: advanced timeline editing
===============================================

.. versionadded:: 15.12.0

Kdenlive offers advanced timeline editing functions. In this article we’re looking at the :menuselection:`insert` |timeline-insert| and :menuselection:`overwrite` |timeline-overwrite| advanced editing functions. A later article then will cover the opposite :menuselection:`lift` |timeline-lift| and :menuselection:`extract` |timeline-extract| functions.

When inserting or overwriting some part in the timeline with some part from a clip, we now face two zones, so how does this work out at all? We only want to deal with three points, that is, with one zone and a point (for that reason this is also sometimes termed three point editing). In consequence, there are two different insert/overwrite operations:

   1. insert/overwrite a clip zone into timeline at some point (cursor/playhead), or
   2. insert/overwrite a clip starting at some point into a timeline zone.

Insert Clip Zone into Timeline at Timeline Cursor
-------------------------------------------------


.. container:: clear-both

   .. image:: /images/timline-use-zone.png
      :align: left
      :alt: timline-use-zone
      :width: 350px

   As we’re going to insert a clip zone into the timeline, first make sure that the :menuselection:`switch for using timeline zone is crossed out` |timeline-use-zone-off| (it’s *off*). This is also shown in the screenshot. (You’ll find this switch above the track headers, next to the track size zoom in/out controls.)

   A visual clue (albeit a rather unintrusive one) is that the **timeline zone bar** is now *dimmed*.

.. container:: clear-both

   .. image:: /images/clip-monitor-with-zone.png
      :align: left
      :alt: clip-monitor-with-zone
      :width: 350px

   Next, mark the **clip region** of the source clip you want to insert into the timeline. You do this as usual, using either the :kbd:`I` and :kbd:`O` shortcuts, or the set zone in/out buttons of the clip monitor.

.. container:: clear-both

   .. image:: /images/timline-select-position-and-track-e1477318374733.png
      :align: left
      :alt: timline-select-position-and-track-e1477318374733
      :width: 350px

   Now **place the timeline cursor** to where you want to start with the insert.

   Also make sure to **select the correct track** for insertion – using the :kbd:`cursor up` and :kbd:`cursor down` keys. (Remember that the currently selected track is marked with the semi-transparent selection color, the exact color of which depends on your particular color theme.)

.. container:: clear-both

   .. image:: /images/timeline-insert-clip-zone-after.png
      :align: left
      :alt: timeline-insert-clip-zone-after
      :width: 350px

   Finally press the :kbd:`v` shortcut, or click the :menuselection:`insert clip zone toolbar button` |timeline-insert|, or use :menuselection:`Timeline --> Insertion --> Insert Clip Zone in Timeline`.

.. rst-class:: clear-both

.. note::

   * Insertion starts from the timeline cursor, and not from the timeline zone start (because we chose to ignore it in our very first step).
   * Locked tracks are unaffected, such as the topmost track in our example.
   * Unlocked tracks get affected in that whatever is at the insertion point and later in the timeline gets shifted away to make room for the insertion.

Insert Clip (from In Point) into Timeline Zone
----------------------------------------------

.. container:: clear-both

   .. image:: /images/timline-use-timeline-zone.png
      :align: left
      :alt: timline-use-timeline-zone
      :width: 350px

   This time, we’re going to insert some part of a clip to *exactly fit* into the timeline zone. So we now need to switch on using the :menuselection:`timeline zone` |timeline-use-zone-on|. This is also shown in the screenshot. (You’ll find this switch above the track headers, next to the track size zoom in/out controls.)

   A visual clue (albeit a rather unintrusive one) is that the **timeline zone bar** is now *bright*.

.. container:: clear-both

   .. image:: /images/clip-monitor-with-in-point.png
      :align: left
      :alt: clip-monitor-with-in-point
      :width: 350px

   This time, we only need to **set the in point** for our source clip. The out point doesn’t matter, as it will be later determined automatically by the length of the timeline zone.

.. container:: clear-both

   .. image:: /images/timeline-use-timeline-zone-before.png
      :align: left
      :alt: timeline-use-timeline-zone-before
      :width: 350px

   Now, place **mark the timeline zone** into which you want to insert a part of your source clip. Notice that the timeline cursor position now doesn’t matter.

   Make sure to **select the correct track** for insertion – using the :kbd:`cursor up` and :kbd:`cursor down` keys.

.. container:: clear-both

   .. image:: /images/timeline-insert-timeline-zone-after.png
      :align: left
      :alt: timeline-insert-timeline-zone-after
      :width: 350px

   Finally press the :kbd:`V` shortcut, or click the :menuselection:`insert clip zone toolbar button` |timeline-insert|, or use :menuselection:`Timeline --> Insertion --> Insert Clip Zone in Timeline`.

.. rst-class:: clear-both
   
.. note::
   
   * Insertion starts from the beginning of the timeline zone, and not from the timeline cursor position (because we chose to enable the timeline zone in our very first step).
   * Locked tracks are unaffected, such as the topmost track in our example.
   * Unlocked tracks get affected in that whatever is at the insertion point and later in the timeline gets shifted away to make room for the insertion.


Overwrite Timeline with Clip Zone
---------------------------------

:menuselection:`overwrite` |timeline-overwrite|

(will be documented later)

Overwrite Timeline Zone with Clip
---------------------------------

:menuselection:`overwrite` |timeline-overwrite|

(will be documented later)




