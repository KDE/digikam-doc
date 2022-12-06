.. metadata-placeholder

   :authors: - Claus Christensen
             - Ttguy (https://userbase.kde.org/User:Ttguy)

   :license: Creative Commons License SA 4.0


.. _markers:

Clip Menu - Markers
===================

.. contents::

.. image:: /images/Kdenlive_Clip_menu.png

These menu items are for modifying the clip that is currently selected in the timeline. The Markers menu is also available from  :ref:`right_click_menu`

The items that appear as sub-menu items on the Clip>Markers menu item are ...


Add Marker
----------

Adds a marker to the clip at the current timepoint. Markers are properties of the clips in the project bin. So this action puts a marker in the clip in the project bin.


Edit Marker...
--------------

For this to work the cursor caret needs to right on top of a marker. If you are not then you get an error on the bottom left "No Marker found at Cursor time". Since the Go To Marker for the clip menu does not work, it is some times a bit tricky to make this menu item work.

Editing a marker in the timeline causes the marker to update in the project bin and thus it also updates anywhere else the clip appears in the timeline.


Delete Marker
-------------

For this to work the cursor caret needs to right on top of a marker. If you are not then you get an error on the bottom left "No Marker found at Cursor time". Since the Go To Marker for the clip menu does not work, it is some times a bit tricky to make this menu item work.

Markers are properties of the clips in the project bin. So this action removes the marker from the clip in the project bin an thus from any other instances of this clip in the timeline.


Delete All Markers
------------------

Deletes all markers from the current clip. Does not appear to work - get "Cannot find clip to remove marker"


Go To marker ...
----------------

The Go To Marker menu item (clip menu) does not appear to work properly. Choosing a marker from this menu item causes the cursor caret to scoot to the end of the clip - it does not stop at the marker chosen. The :ref:`clip_monitor_rightclick` on the Clip Monitor right click menu does work.
