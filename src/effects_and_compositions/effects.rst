.. meta::
   :description: Apply effects in Kdenlive video editor
   :keywords: KDE, Kdenlive, effects, documentation, user manual, video editor, open source, free, learn, easy

.. metadata-placeholder

   :authors: - Annew (https://userbase.kde.org/User:Annew)
             - Claus Christensen
             - Yuri Chornoivan
             - Ttguy (https://userbase.kde.org/User:Ttguy)
             - Vincent Pinon <vpinon@kde.org>
             - Bushuev (https://userbase.kde.org/User:Bushuev)
             - Jack (https://userbase.kde.org/User:Jack)
             - Roger (https://userbase.kde.org/User:Roger)
             - Eugen Mohr
             - Smolyaninov (https://userbase.kde.org/User:Smolyaninov)
             - Julius Künzel <jk.kdedev@smartlab.uber.space

   :license: Creative Commons License SA 4.0

.. _effects:

Effects
=======

.. contents::

Effects in **Kdenlive** can be used to modify the audio and video properties of the source material.

You add effects to clips by choosing them from the **Effects Tab** and dragging them onto a clip in the timeline. Or by selecting a clip in the timeline and choosing the :menuselection:`Timeline --> Add Effect` menu item or :menuselection:`Add Effect` from Clip in Timeline :ref:`right_click_menu` menu . For more detail see :ref:`quickstart`.

The effects that are in play on a given clip can be viewed and edited via the Properties Tab that displays when the clip in question is selected in the timeline.

You can also apply effects to an entire track. This is achieved by dragging an effect from the **Effect Tab** to the **Track Header**. Or you can click on the track header and choose the :menuselection:`Timeline --> Add Effect` menu item. Tracks which have effects added in this fashion will have a gold star icon in the track header.

.. figure:: /images/Kdenlive_Effect_on_whole_track.png
   :width: 100px
   :alt: Kdenlive_Effect_on_whole_track

   Figure 1a. Track header showing effect icon enabled indicating an effect has been added to this track.

Effects Tab
-----------

Make the Effects Tab visible use the :menuselection:`View --> Effects` menu item.

.. figure:: /images/Kdenlive_Effects_tab_22_08.png
   :width: 350px
   :alt: Kdenlive_Effects_tab_22_08

   Figure 1b - effects tab. The Information icon (6) has been toggled so that the tab displays a brief description of the selected effect at the bottom

The effects tab has 5 different icons that cause the application to show and hide different categories of effects.

.. versionchanged:: 22.08
     
   Main tab now displays all video and audio effects.

By default the effects tab displays the "Main Effects" (Icon 1 selected) which show all video and audio effects.

Icon 2 makes it display all the video effects categories (This option hides the Audio Correction category that is in the "Main Effects" and adds the Misc and Motion categories).

Icon 3 makes it display all the Audio effects categories

Icon 4 is Custom effects

Icon 5 is Favorite Effects. This is the same list that appears in the "Insert an Effect ..." context sensitive menu obtained on a clip in the timeline. An effect gets in this list by choosing *Add to Favorites* from the context sensitive menu on each of the effects.

Icon 6 toggles the information display which - when on - shows a description of what the effect does.

Icon 7 let you download effects users had created and uploaded to the KDE Kdenlive store. 

To add an effect to a clip, simply drag it from the **Effects Tab** to the clip on the :ref:`timeline`.

The Properties Tab and its Menu
-------------------------------

The Properties Tab
~~~~~~~~~~~~~~~~~~

The Properties Tab displays the settings for the effects on the currently selected clip (Figure 3) or the settings for the currently selected transition (Figure 4) depending on whether it is a clip or a transition that is currently selected.

.. figure:: /images/Kdenlive_selection_param1.png
   :alt: Kdenlive_selection_param1

   Figure 3 - Properties when a clip with effects is selected

.. figure:: /images/Kdenlive_selection_param2.png
   :alt: Kdenlive_selection_param2

   Figure 4 - Properties when a transition is selected

.. rst-class:: clear-both

Click the eye icon shown at 2 to temporarily disable the effect and toggle the button to the state shown at 1.
Click the empty eye icon shown at 1 to re-enable a disabled effect and toggle the button to the state shown at 2.

.. figure:: /images/Toggle_effect_on_and_off.png
   :alt: Toggle_effect_on_and_off

   Toggle effect on and off

To remove an effect from a clip, click the trash can icon labelled 3 in the image below. The arrow labelled 1 minimizes the effect in the Properties Window. And the icon labelled 2 brings up the Properties Tab menu shown.

.. image:: /images/Kdenlive_Effect_stack_icons2_17.04.png
   :alt: Effect stack version 17.04

Reset Effect
~~~~~~~~~~~~

This reverts all the settings in the effect back to their default values.

Save Effect
~~~~~~~~~~~

This allows you to save the current effect and all its settings. The saved effect will appear in the Effect List in the Custom category.

Create Group
~~~~~~~~~~~~

This creates an Effect Group. An Effect Group is a place holder for multiple effects. You can then save the group of effects – they will the appear in the Effect List, in the Custom Section. You can then later apply the whole group of effects to other parts of the timeline.

To add effects to the group, first add the effect in question to a clip. Then drag that effect and drop it onto the Effect Group in the Properties Tab.

Create Region
~~~~~~~~~~~~~

.. versionadded:: 0.9.3

The "Create Region" feature enables a user to apply an effect to a part of a clip only. It is a really powerful feature but currently the UI is not fully ready to get its full potential.

Basically, you add an effect to a clip – for example "Sepia" – then you go in the effect's menu and select "Create Region". This will now open a file dialog.

In that dialog, you need to point to an MLT clip with alpha transparency. This is where Kdenlive is not 100% ready because there are many ways we could create such clips, using for example a threshold filter or rotoscoping. But as a start, let's say you can open any image with alpha transparency, or a title clip created with Kdenlive. Then, the "sepia" effect will only be applied on the non-transparent areas of this "region" clip.

Keyframes in effects
--------------------

Many effects use the concept of "Keyframes". Keyframes are user-defined points in your clip where you want an effect to start, stop or change. You can set the parameters for your effects to different values at different keyframes and **Kdenlive** will then gradually change the parameters between the two keyframes so that by the time the video has arrived at the next keyframe it will have adjusted the parameter to match that key frame. It interpolates between keyframes.

See :ref:`quickstart` for an example on keyframing the RGB adjustment effect.

.. versionadded:: 20.08.0

Effect panels get zoom bars. Adjusting keyframes just get easier.

.. image:: /images/Zoombar-effects.gif
  :align: left
  :alt: Zoombar-effects

Working with keyframes in the effect stack
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. versionadded:: 21.04.0

The effect’s keyframe panel has new icons, improved keyframe grabbing and new functions like:

.. image:: /images/Move-kf-to-cursor.gif
   :width: 220px
   :align: left
   :alt: move-kf-to-cursor

1. Select the keyframe you want to move
2. Move the cursor to the position where you want to move the keyframe to
3. Click on :menuselection:`Move selected keyframe to cursor position`

.. container:: clear-both

   .. image:: /images/Duplicate-keyframe.gif
      :width: 220px
      :align: left
      :alt: duplicate-keyframe

   1. Select the keyframe you want to duplicate
   2. Move the cursor to the position where you want to insert the new keyframe
   3. Click on :menuselection:`Duplicate selected keyframe`

.. container:: clear-both

   .. image:: /images/Apply-value-to-selected-kf.gif
      :width: 220px
      :align: left
      :alt: apply-value-to-selected-kf

   1. Select all keyframes you want to apply the value on
   2. Go to one of the selected keyframes and change the value(s) as you want
   3. Click on :menuselection:`Apply values to selected keyframes`
   4. Select the parameters you want to apply and click on :menuselection:`OK`

.. rst-class:: clear-both

.. figure:: /images/Kf-ctrl-select.gif
   :width: 220px
   :alt: kf-ctrl-select

   Select keyframes with :kbd:`Ctrl + click`

.. figure:: /images/Kf-rubber-select.gif
   :width: 220px
   :alt: kf-rubber-select

   Rubber select select keyframes with :kbd:`Shift + click`

.. figure:: /images/Multiple-kf-move.gif
   :width: 220px
   :alt: multiple-kf-move

   Move multiple keyframes at once

.. _exchange_keyframes_across_effects:

Exchange keyframes across effects
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

You can import and export keyframes from/to the clipboard. This feature is not only useful to copy keyframes from one clip to another, it can e.g. also be used to copy the results of the motion tracker to a transform effect.

To export the keyframes the clipboard click on |application-menu| inside the keyframe widget and choose :menuselection:`Copy keyframes to clipboard`.

.. image:: /images/Kdenlive_import_keyframes_dialog.png
   :align: left
   :alt: Import keyframes dialog

To import keyframes from the clipboard click on |application-menu| inside the keyframe widget and choose :menuselection:`Import keyframes from clipboard`. If you have valid data on your clipboard you should see a dialog similar to the screenshot where you can adjust the mapping of the data.

.. rst-class:: clear-both

Master effect
-------------

.. versionadded:: 19.12..0

The ability to apply audio or video effects to all tracks. See :ref:`master_effect` 

Effect Zones
------------

.. versionadded:: 21.04.0

The new Effect Zones allow you to apply effects to specific regions of tracks or the timeline. Zones can be set from the effect zone bar in the timeline or from the interface in the effect panel.

**Track Effect Zone**

.. image:: /images/Track-effect-zone.gif
   :alt: track-effect-zone

**Master Effect Zone**

.. image:: /images/Timeline-effect-zone.gif
   :alt: timeline-effect-zone

Time Remapping (Speed Ramps)
----------------------------

.. versionadded:: 21.08.0

The new Time Remap feature allows to keyframe the speed of a clip.

.. image:: /images/timeremap.gif
   :alt: timeremap


Masking Effects
---------------

.. versionadded:: 21.08.0

Masking Effects

You may now apply effects to only affect specific regions of a clip by using masks. Do note that this is only the initial implementation so expect an improved workflow in the coming releases. For now the process involves 3 steps:

1. Add one of the 3 available masks: Shape alpha (mask), Rotoscoping (mask) or Alpha shapes (mask).
2. Add an effect (or effects) to be applied to the masked region.
3. Add Mask Apply to activate the mask to the effects in step 2.

.. image:: /images/mask.gif
   :alt: mask

You may apply more than one mask per clip by following the same 3 step process.

Seek To Active Frame
--------------------

Some keyframe controls have a *seek to active frame* button

.. image:: /images/kdenlive_Seek_to_Active_frame_button.png
   :align: left
   :alt: Seek to active frame button

(Labeled 1 in screenshot A below). When *seek to active frame* is toggled on and you click on one of the keyframes in the keyframe list, Kdenlive will scroll the preview window to that keyframe. In the example of the screenshot, we have selected the keyframe at 9:20 in A and the clip position caret (highlighted in red box) shows the location of this keyframe. Clicking the keyframe at 10:00 in B shows how the clip position has moved.

.. image:: /images/Kdenlive_Seek_to_active_frame.png
   :align: right
   :alt: Seek to active frame

Effects Demos
-------------

The following three YouTube videos display the results of a number of the video effects available in **Kdenlive** (Spanish captioning).

https://youtu.be/C6oeu2Yc64I

https://youtu.be/jrC4F_G64jA

https://youtu.be/XMoSgHHbA4k

Another YouTube video (English Captions).

https://youtu.be/capV7lUzbOw

See also this YouTube play list from `Franz M.P. <http://www.youtube.com/playlist?list=PLc1VErdvjnSFE6w6sryFWIu4lfKavhnvz>`_

Effects Categories
------------------

See also :ref:`effects_and_transitions` for an alphabetical list of effects and transitions.

The effects are divided into the following categories:

.. toctree::
   :maxdepth: 1
   :glob:

   effect_groups/*

The available effects are defined by :file:`.xml` files found in :file:`.local/share/kdenlive/effects` (e.g. :file:`/usr/share/kdenlive/effects`).

These :file:`.xml` files contain the default values for the effects parameters. So if you don't like the default values for the effects in Kdenlive, you can modify the defaults by editing these :file:`.xml` files.

FAQ
---

Q: How to duplicate an effect to use similar settings somewhere else?

A: Select your effect in the timeline. In the Properties Tab choose :menuselection:`Save` (from the :ref:`effects`). You will now find this effect available in the **Effect List** :menuselection:`Custom` section.

A: Other solution: select a strip containing the effect, :menuselection:`Copy`, then, where you want to apply it again, right-click and select :menuselection:`Paste effect` instead of :menuselection:`Paste`.

Q: How to apply an effect on several clips (all) at the same time?

A: You can select multiple clips with :kbd:`Shift + drag` (left mouse button) around them. Then right-click and group clips (or :kbd:`Ctrl + G`).

