.. metadata-placeholder

   :authors: - TheDiveO
             - Eugen Mohr
             
   :license: Creative Commons License SA 4.0

.. moved from https://kdenlive.org/en/project/timeline-preview-rendering/   

.. _timeline-preview-rendering:

Timeline preview rendering
============================

.. versionadded:: 16.08

**Timeline preview rendering is an outstanding feature of Kdenlive**. It officially debuted in version 16.08. Preview rendering allows you to render parts or your complete timeline in the background, so you can smoothly play it back. This is especially useful when you work with complex track compositions or use effects that are computationally intensive. Instead of stuttering playback, you now get smooth playback. This way, you can check that your timing of keyframes and effect is working out nicely. And you don’t need to leave Kdenlive, as you would need when rendering your timeline to an traditional video file.

Full-FPS Preview of Effect-Heavy Timeline Stuff
-----------------------------------------------

.. container:: clear-both

   .. image:: /images/preview-timeline-clip.png
      :align: left
      :alt: preview-timeline-clip
      :width: 350px

   **Raw source footage**: a good example for Kdenlive’s new timeline preview rendering is this: say, you have some FullHD source footage. Raw, your system easily plays this clip back at its original frame rate of 25fps. This isn’t even a job for proxy clips on a decent system.

   But you may have already suspected: this raw footage is in dire need of some serious processing before it can be shown to any audience…
 
.. container:: clear-both

   .. image:: /images/preview-timeline-effect-heavy-clip.png
      :align: left
      :alt: preview-timeline-effect-heavy-clip
      :width: 350px

   **Now let’s get effects-heavy**. For production, we need to de-fish this footage (action cams, you know). After defishing, we need some sharpening. And then, we also have to decompress the tonal curve (Protune, y’know). Wait, there’s more: saturation needs to be corrected too (again, Protune).

   With these innocent four effects applied, look at the playback rate that’s shown in the bottom right corner of the monitor: dismal six frames per second! It crawls.

   Unfortunately, proxy clips don’t help in this situation: proxy clips are low-res and low-quality variants of the source clips, without any effects applied. So our effects will slow down also proxy clips considerably.

   You need timeline preview rendering.

.. rst-class:: clear-both

HowTo: Timeline Preview Rendering
---------------------------------

**Please note**: timeline preview rendering does **not** speed up timeline editing. It speeds up the timeline playback. Why should you need that? For instance, to check the correct timing of keyframed effects and transitions.

Preview rendering solely covers rendering the video part of the timeline. In contrast, Kdenlive renders audio always independent of the preview rendering. In particular, you can make audio changes at any time without affecting preview rendering.

.. container:: clear-both

   .. image:: /images/preview-menu.png
      :align: left
      :alt: preview-menu
      :width: 350px

   Timeline preview rendering is best controlled using the dedicated :guilabel:`Timeline Preview` menu in the timeline toolbar. In addition, you can find most of the menu items also in the main menu :menuselection:`Timeline --> Timeline Preview --> …`

.. rst-class:: clear-both

Step 1: Set Preview Zone
------------------------

.. container:: clear-both

   .. image:: /images/preview-timeline-step-set-zone.png
      :align: left
      :alt: preview-timeline-step-set-zone
      :width: 350px

   Set the timeline zone in (:kbd:`I`) and out (:kbd:`O`) points for the zone you want to render for preview.

   Next, select :guilabel:`Add Preview Zone` (alternatively, :menuselection:`Timeline --> Timeline Preview --> Add Preview Zone`).

.. note:: 
   For the first time, you won’t see any change yet.

.. rst-class:: clear-both

Step 2: Render Preview Zone in Background
-----------------------------------------

.. container:: clear-both

   .. image:: /images/preview-timeline-step-render.png
      :align: left
      :alt: preview-timeline-step-render
      :width: 350px

   Select Start Preview Render (:menuselection:`Timeline --> Timeline Preview --> Start Preview Render`). Or press :kbd:`Shift + Return`. Or click on |preview-render-on|.

.. note::
   
   You can even add multiple, non-continuous preview rendering zones.

A red bar appears (if it has not already been show): it’s located right between the timeline ruler and the topmost track. As background rendering progresses, this bar will slowly turn green, chunk by chunk.

You can continue to work at any part of your timeline while preview rendering is active. However, as soon as you edit clips or transitions that touch your preview zones, rendering will stop, and the affected preview zones turn back to red. Simply restart rendering, if you need.

The preview is divided into chunks, where each is 25 frames in size; this corresponds with 1s of playback length for 25fps projects.

.. rst-class:: clear-both

Step 3: Enjoy Smooth Timeline Preview!
--------------------------------------

.. container:: clear-both

   .. image:: /images/preview-timeline-step-done.png
      :align: left
      :alt: preview-timeline-step-done
      :width: 350px

   All green chunks of your timeline will now play back at full speed. You should immediately notice that scrubbing such timeline zones will be much faster too.

.. container:: clear-both

   .. image:: /images/preview-timeline-fast-preview.png
      :align: left
      :alt: preview-timeline-fast-preview
      :width: 350px

   Timeline playback is now full 25fps, even as the corresponding timeline clip makes heave use of effects (especially de-fish is computational intensive).

.. rst-class:: clear-both

Notes
-----

Smart Preview Undo/Redo
^^^^^^^^^^^^^^^^^^^^^^^

Kdenlive is smart enough to support some levels of undo and redo. So you can check out the results of a two different effect settings by quickly undoing and redoing the effect change without having to render anew the preview.


Preview Cache Storage
^^^^^^^^^^^^^^^^^^^^^

.. container:: clear-both

   .. image:: /images/preview-timeline-cache-data.png
      :align: left
      :alt: preview-timeline-cache-data
      :width: 350px

   You can easily find out how much storage you are currently using for the timeline preview. Use :menuselection:`Project --> Project Settings`, then select the tab :guilabel:`Cache Data`.

   You’ll now see a neat figure illustration cache data disc space consumption. At any time, you can quickly remove the cache data used for the timeline preview: simply click on the :guilabel:`trash` button next to row **Timeline Preview**.

.. rst-class:: clear-both

Preview Profiles
^^^^^^^^^^^^^^^^

.. container:: clear-both

   .. image:: /images/timeline-preview-project-settings.png
      :align: left
      :alt: timeline-preview-project-settings
      :width: 350px

   Most of the time, it should suffice to leave the preview profile set to :guilabel:`Auto`. Kdenlive then will select a suitable preview profile based on your project profile.

   In some rare cases, as with unusual frame rates, or when you want to control the preview rendering encoding quality, then you can change the preview profile, or create your own preview profile. Use the :guilabel:`Manage timeline preview profiles` button next to the preview profile selection.

.. rst-class:: clear-both

De-synchronized Preview
^^^^^^^^^^^^^^^^^^^^^^^

If for some reason the rendered preview should get out of sync with your timeline editing, simply remove the corresponding preview zone (:guilabel:`Remove Preview Zone`) or all preview zones (:guilabel:`Remove All Preview Zones`). This gets you back to a sane preview state. Then add the zone back again (using :guilabel:`Add Preview Zone`), and rerender.
