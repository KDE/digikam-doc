.. metadata-placeholder

   :authors: - Jack (https://userbase.kde.org/User:Jack)

   :license: Creative Commons License SA 4.0

.. _space:

Timeline>Space
=================

.. contents::


Insert Space
------------

:menuselection:`Space` brings up a submenu with :menuselection:`Insert Space` and :menuselection:`Remove Space` options.  Inserting a space is a useful feature when you want to push all the existing clips on the timeline aside to make room for new clips but also want to preserve the relationships among all the clips that were shifted, including their transitions.


.. image:: /images/Kdenlive_timeline_space00.png
  :align: left
  :alt: Figure 1.

In addition to invoking this menu from :menuselection:`Timeline --> Space`, you can also bring it up by right-clicking on an empty spot on a track in the timeline.  There are a couple of important differences with how :menuselection:`Insert Space` behaves, though, depending on which method you choose.  First, using :menuselection:`Timeline --> Space --> Insert Space` brings up the **Add Space** dialog shown in Figure 1 where the default choice for **Track:** is *All tracks*.  


.. image:: /images/Kdenlive_timeline_space01.png
  :align: left
  :alt: Figure 2.

When you access the menu by right-clicking on a track, the same dialog appears but the default is the track you clicked on.  In either case, you can obviously override the default by picking another option (Figure 2).  The other difference is that the insertion happens at the playhead when the operation originates from the Timeline menu; it takes place at the mouse cursor position when right-clicking.

And in case you're wondering, the default **Duration** for the inserted space is 65 frames, which is not configurable in the Kdenlive or Project settings.  65 frames will equate to different amounts of time depending on the frame rate set in your project profile.  In the example, our project's frame rate happens to be 30 fps and that's why the default **Duration** works out to be 00:00:02.05.


.. image:: /images/Kdenlive_timeline_space-b4.png
  :align: left
  :alt: Figure 3.

Let's look at an example, albeit an unrealistic one, of how inserting a space from the playhead position will affect clips and transitions on different tracks.  In general, inserting a space will shift any clips that the playhead is touching as well as all clips to the right of the playhead on the affected track(s).  Transitions are a little trickier because they span two tracks.  They are assumed to “belong” to the higher track (regardless of the direction of the transition) and so if the playhead is touching them, they will go if the higher track is included in the shift.  Figure 3 shows a scenario with clips on three video tracks before inserting a space.  All of the following examples assume we're starting from this position.


.. image:: /images/Kdenlive_timeline_space-all.png
  :align: left
  :alt: Figure 4.

In Figure 4, we have chosen to insert a space on *All Tracks*.  Since the playhead was touching both transitions and the color clips on tracks 2 and 3, it shifted them, along with all the clips to the right of the playhead.  It did not shift the black clip on track 1 because it was to the left of the playhead.


.. image:: /images/Kdenlive_timeline_space-v1.png
  :align: left
  :alt: Figure 5.

In Figure 5, we chose Track 1.  The transition went because it “belongs” to the black clip on track 1, but the clip itself did not go because it was to the left of the playhead.  The red clip on track 1 also went because it was to the right of the playhead.


.. image:: /images/Kdenlive_timeline_space-v2.png
  :align: left
  :alt: Figure 6.

In Figure 6, we shifted the clips on Track 2.  Now the Dissolve transition between tracks 1 and 2 does not shift, even though the playhead was touching it, because it belongs to track 1.  The other transition does go, because it belongs to the higher track 2.


.. image:: /images/Kdenlive_timeline_space-v3.png
  :align: left
  :alt: Figure 7.

Finally, In Figure 7, we chose track 3 and just the clips move.


If we had started this process by right-clicking on a spot on track 1 or track 3 which corresponds to the playhead position in the example, the results would have been the same.


Remove Space
------------

:menuselection:`Remove Space` is not the exact opposite of :menuselection:`Insert Space`. 

The similarities are:

* If you access :menuselection:`Remove Space` from the :menuselection:`Timeline` menu, the playhead governs where the removal will happen.  When using right-click, it happens at the mouse cursor.
* Transitions will move with clips on the higher track.

There are the following differences:

* It only works on one track at a time – there is no *All Tracks* option.
* If you accessed :menuselection:`Remove Space` from the :menuselection:`Timeline` menu, the playhead must be on an empty space in the track where the space is to be removed.
* You can not set the duration of the space to be removed – all the empty space between clips is removed.  All the clips and transitions to the right of the playhead or mouse cursor will be shifted left until the first clip encounters another clip or the beginning of the track.

