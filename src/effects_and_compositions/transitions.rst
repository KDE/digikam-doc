.. metadata-placeholder

   :authors: - Annew (https://userbase.kde.org/User:Annew)
             - Claus Christensen
             - Yuri Chornoivan
             - Ttguy (https://userbase.kde.org/User:Ttguy)
             - Vincent Pinon <vpinon@kde.org>
             - Bushuev (https://userbase.kde.org/User:Bushuev)
             - Jack (https://userbase.kde.org/User:Jack)
             - Roger (https://userbase.kde.org/User:Roger)
             - Anders Lund

   :license: Creative Commons License SA 4.0

.. _transitions:

Transitions
===========

.. contents::

In **Kdenlive** a transition is a wipe or dissolve composition between two overlapping clips.

There are two ways of adding transitions in **Kdenlive**: **Mix clips**, aka same tracks transitions, and the legacy way, which is transitions between clips on different tracks.

Wipes are greyscale images in :file:`.pgm` (Portable GreyMap) format, and during the transition the composition track will be displayed in the darkest areas of the wipe image first. If the wipe is inversed, the composition track will become visible in the brightest areas of the wipe image first instead. You can download more wipes (by clicking the download button in the wipe composition properties) or create your own and load them by clicking the folder button.

.. _same_track_transition:

Mixes
-----

.. versionadded:: 20.12

Mixes are transitions between clips on the same track.

.. figure:: /images/Kdenlive_mixed_clip_800.png
   :align: left
   :alt: Kdenlive_mixed_clip_800

   Kdenlive with mixed clips in the timeline. The toolbar button is circled with red, and the transition properties are on the right.

To use it:

* Ensure that there is at least half a second worth of frames at the end of both clips (outside the timeline clip). Without that, Kdenlive will not apply the transition, but display an error message.
* Select either clip. If there are clips in both ends of the one selected, the transition will be added nearest the playhead.

Ready to add the transition:

* **Keyboard:** Press the :kbd:`U` key.
* **Mouse:** double-click at the point where the clips meet. This does not require a clip to be selected.
* **Toolbar:** Press the :guilabel:`Mix Clips` button on the timeline toolbar.

The transition length defaults to one second equally distributed between the two clips. You can drag either end of the transition to adjust.

The default transition is dissolve, but you can select (click) the transition and edit the wipe method and properties as desired in the effect/transition stack window.

The composition method is set to Luma, and it does not make sense to change that, since there will not really be a transition. Other methods are meant for compositing two videos, not transitioning between them.

* Select the desired wipe from Wipe Method.
* The :guilabel:`Reverse` option reverses the transition.
* The :guilabel:`Softness:` slider will affect the edges of wipe transitions.
* Set the desired duration.
* Since 21.08: select the alignment of the transition, either left, centered (default) or right.

To delete the transition, select it and press the :kbd:`Delete` key.

.. tip::

   To apply only transitions on either the video or audio track just lock the track on which you don’t want a transition to be applied and add transitions by one of the above ways on the other track.

Compositions
------------

Compositions are transitions between clips on different tracks. This is the legacy way of doing transitions in **Kdenlive**.

.. figure:: /images/Kdenlive_transitions_legacy_god.png
   :align: left
   :alt: Kdenlive_transitions_legacy_god

   To the left the purple one-click circle to add a wipe composition. In the middle the composition bar, and on the right the properties.

To add a transition:

* Adjust your clips so that they overlap.
* Hold the mouse wheel over the top clip bottom corner, and click the purple circle appearing (the :ref:`status_bar` will say "Click to add a composition"), or alternatively right-click either clip and select :menuselection:`Insert a composition... --> Wipe`.

The default transition is a dissolve, to change that select (click) the composition bar to show the effect/composition stack window.

The transition, when added this way, will cover the overlapping area between the clips.

You can:

* Select a composition track. The default is "Automatic" which is likely the correct choice in this case.
* Select a wipe.
* Enable :guilabel:`Inverse` to inverse the wipe.
* Enable :guilabel:`Revert` to revert the order of the videos in the transition (which you probably do not want).

If you move or adjust your clips after adding the transition, you need to refit it manually if desired. You can drag the entire transition with the select tool, and adjust its duration by dragging either end.

Available Transitions
---------------------

.. toctree::
   :maxdepth: 1
   :glob:

   transitions/*

