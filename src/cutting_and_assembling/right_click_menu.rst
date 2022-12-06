.. metadata-placeholder

   :authors: - Annew (https://userbase.kde.org/User:Annew)
             - Claus Christensen
             - Yuri Chornoivan
             - Gallaecio (https://userbase.kde.org/User:Gallaecio)
             - Ttguy (https://userbase.kde.org/User:Ttguy)
             - Bushuev (https://userbase.kde.org/User:Bushuev)
             - Jack (https://userbase.kde.org/User:Jack)
             - Tenzen (https://userbase.kde.org/User:Tenzen)

   :license: Creative Commons License SA 4.0

.. _right_click_menu:

Right-Click Menus
=================

.. contents::

Clip in Timeline
----------------


This is the context menu that appears when you right-click on a clip in the timeline.  A different menu appears if you click in empty space in the timeline.


.. image:: /images/kdenlive_right-click_on_clip.png
   :alt: kdenlive_right-click_on_clip


* :menuselection:`Copy` will copy the clip and selected clips to the clipboard.


* :menuselection:`Paste Effects` will paste only the effects of the last copied clip to the selected clip.  See :ref:`paste_effects`.


* :menuselection:`Delete Effects` will remove all effects from the selected clip.


* :menuselection:`Group Clips` - see :ref:`grouping`


* :menuselection:`Ungroup Clips` - see :ref:`grouping`


* :menuselection:`Edit Duration` - will open the Duration Dialog and will allow you to adjust the position of the clip in the timeline, what time point of the source clip to start on the timeline, the duration of the clip, and what time point of the source clip to end on the timeline. Note that Kdenlive will automatically adjust co-related values. 


.. image:: /images/kdenlive_timeline_current_clip_duration02.png
   :alt: kdenlive_timeline_current_clip_duration02


* :menuselection:`Restore audio` will add any audio track that is part of the original clip to the timeline


.. image:: /images/Kdenlive-restore-audio.gif
   :alt: Kdenlive-restore-audio


* :menuselection:`Disable clip` will disable the clip so it will not render in the project monitor or in a final video render. To disable the video or audio part of an A/V clip you have to un-group the A/V clip, disable the video or audio part and group the A/V clip again.


* :menuselection:`Extract clip` will remove the clip from the timeline and the space it occupied. 


.. image:: /images/Kdenlive-extract_clip.gif
   :alt: Kdenlive-extract_clip


* :menuselection:`Save timeline zone to bin` will take the selected timeline zone and add markers to your clips in the project bin.


.. image:: /images/Kdenlive-timeline-righ-click-markersmenu.png
   :alt: Kdenlive-timeline-righ-click-markersmenu

* The markers sub-menu allows you to add, edit and remove markers from your clips that are displayed on the timeline.  These markers will move with the clips.  See :ref:`markers`.


* :menuselection:`Set Audio Reference` and :menuselection:`Align Audio to Reference` are used to align two clips on different tracks in the timeline base on the audio in the tracks. This is useful if two cameras recorded the same scene simultaneously. **Kdenlive** can use the almost identical audio track to align the two clips.


   To use this feature:


   * Select the clip that you would like to align *to*.


   * Right click, select :menuselection:`Set Audio Reference`.


   * Select all the clips that you would like to get aligned.


   * Right-click and select :menuselection:`Align Audio to Reference`.

.. _change_speed:

Change speed
^^^^^^^^^^^^

*  :menuselection:`Change speed` will open the change speed dialog that will allow you to increase or decrease the playback speed of a clip, allow you to play the clip in reverse, and will enable / disable pitch compensation for the audio on a speed-adjusted clip.


   .. image:: /images/Kdenlive-change_speed_dialog.png
      :alt: Kdenlive-change_speed_dialog

   Doing speed change of a clip with the mouse see: :ref:`change_speed_of_a_clip` 


* :menuselection:`Clip in project bin` will highlight the selected clip in the project bin.


* :menuselection:`Cut Clip` Selecting this will cause the selected clip to be cut at the location of the :ref:`timeline`. See also  :ref:`editing`.


* :menuselection:`Insert Effect` will open a sub-menu to allow you to quickly add the :ref:`transform` or the :ref:`lift_gamma_gain_effect` effects.


* :menuselection:`Insert composition` will open a sub-menu to allow you to quickly add the :ref:`composite_and_transform` or the :ref:`wipe` composition


Empty Space in Timeline
-----------------------



A different menu appears if you click in empty space in the timeline.


.. image:: /images/kdenlive_right-click_in_timeline_space.png
   :alt: kdenlive_right-click_in_timeline_space


* :menuselection:`Paste` will paste a clip from the clipboard into the timeline


* :menuselection:`Insert Space` will open the Insert Space dialog and will allow you to insert blank space in the timeline in a single track. 


* :menuselection:`Remove Space` will remove all space between clips on the track.


* :menuselection:`Remove Space in All Tracks` will remove space between clips on all the tracks.


* :menuselection:`Add/Remove Guide` will add a guide to the timeline.


* :menuselection:`Edit Guide` will allow you to edit the guide label.


* :menuselection:`Go to Guide` will pop-up a sub-menu with a list of your guides and will move the timeline position marker to that guide.


* :menuselection:`Insert composition` will open a sub-menu to allow you to quickly add the :ref:`composite_and_transform` or the :ref:`wipe` composition


