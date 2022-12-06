.. meta::
   :description: The Kdenlive User Manual
   :keywords: KDE, Kdenlive, documentation, user manual, video editor, open source, free, help, learn, render, render parameter, render zone, render multiple zone

.. metadata-placeholder

   :authors: - Annew (https://userbase.kde.org/User:Annew)
             - Claus Christensen
             - Yuri Chornoivan
             - Ttguy (https://userbase.kde.org/User:Ttguy)
             - Vincent Pinon <vpinon@kde.org>
             - Bushuev (https://userbase.kde.org/User:Bushuev)
             - Jessej (https://userbase.kde.org/User:Jessej)
             - Dbolton (https://userbase.kde.org/User:Dbolton)
             - Jack (https://userbase.kde.org/User:Jack)
             - Roger (https://userbase.kde.org/User:Roger)
             - KGHN (https://userbase.kde.org/User:KGHN)
             - Eugen Mohr

   :license: Creative Commons License SA 4.0

.. _render:

Rendering
=========

..
  TODO:
  * How to choose the correct output format and bit rate? * What to do for rendering lossless, for an iPhone, or whatever? (Dropdown containing targets like lossless/HQ/player)

.. contents::

Rendering is the process where the edited clips are saved into a single complete video clip. During the rendering process the video can be compressed and converted to a number of different video formats (aka codecs).

The rendering dialog is brought up from the render button |media-record| from selecting :menuselection:`Project --> Render` menu item or by the :kbd:`Ctrl + Enter` shortcut.


Rendering Dialog
----------------

.. versionchanged:: 22.04
   
.. image:: /images/exporting/render_dialog_22-04.png
   :alt: File rendering dialog 22.04

:ref:`download_new_render_profiles`

Rendering Preset Categories
----------------------------

.. image:: /images/exporting/render_dialog_22-04_categories_expanded.png
   :alt: File rendering categories - ver 22.04

**Kdenlive** offers many different rendering presets to choose from. The rendering presets are grouped into categories. See picture Above.

Full Project
------------

:guilabel:`Full Project` radio button is the default setting. **Kdenlive** render from the first clip until the last clip in the timeline. 

Selected Zone
-------------

:guilabel:`Selected Zone` radio button, **Kdenlive** will only render that portion of the project which has a selected zone created for it. See :ref:`monitors`.

.. _remder_using_zone:

Guide Zone
----------

.. image:: /images/exporting/render_guide_zone_22-04.png
   :alt: render guide zone 22-04

:guilabel:`Guide zone` radio button makes use of :ref:`guides` to define a region of the project that is to be rendered. See :ref:`rendering`.


Guide Multi-Export
------------------

.. versionadded:: 22.04

.. image:: /images/exporting/render_guide_multi-export_22-04.png
   :alt: render guide multi export 22-04

:guilabel:`Guide Multi-Export` radio button makes use of :ref:`guides` categories to be rendered. 

.. image:: /images/exporting/render_guide_multi-export_example_22-04.png
   :alt: render guide multi-export example 22-04

The selection of guide categories indicates which guides categories will be considered for rendering. In the example above, there are the following options:

*	"All Categories": This leads to four files: 

   * `projectname-begin.mp4` (from 00:00:00 to "guide1")
  
   * `projectname-guide1.mp4` (from "guide1" to "guide2")
   
   * `projectname-guide2.mp4` (from "guide2" to "guide3")
  
   * `projectname-guide3.mp4` (from "guide3" to the end)

*	"Category 0 (purple)": This leads to three files:
   
   * `projectname-begin.mp4` (from 00:00:00 to "guide1")
    
   * `projectname-guide1.mp4` (from "guide1" to "guide2")
   
   * `projectname-guide2.mp4` (from "guide2" to the end)

*	"Category 1 (blue)": This leads to two files: 

   * `projectname-begin.mp4` (from 00:00:00 to "guide3")
   * `projectname-guide3.mp4` (from "guide3" to the end)

* If guides are behind the last timeline clip, they are ignored. 

* If a guide sits right at the beginning of the timeline, the name of that guide is used instead of "begin". 

* If two guides have the same name, an underscore and a number will be added to the file name.


More Option
-----------

:guilabel:`More Option` show you more options for rendering.


Render Overlay
--------------

.. image:: /images/Kdenlive_Render_overlay.png
   :align: left
   :alt: Kdenlive_Render_overlay

This option overlays a time code or frame count over the rendered video. This will put the overlay over the entire rendered project. Alternatively you can use the :ref:`dynamic_text` effect to overlay selected regions of the video.

.. image:: /images/Kdenlive_Render_overlay_result_eg.png
   :width: 150px
   :alt: render overlay result


Export Metadata
---------------

Check this to have the metadata which has been entered under :ref:`project_settings` placed into the metadata of the rendered file.

.. image:: /images/exporting/project_settings_21-08_metadata.png
   :alt: Metadata tab of Project Settings

And this is the metadata on the resulting clip (rendered with :guilabel:`Export Metadata` checked).

.. image:: /images/Kdenlive_Clip_properties_metadata_res.png
   :alt: Kdenlive_Clip_properties_metadata_res

.. code-block:: bash

  $ ffprobe dog_rotated_meta_data.mp4

.. code-block:: bash

      Metadata:
      major_brand     : isom
      minor_version   : 512
      compatible_brands: isomiso2avc1mp41
      title           : Bailey
      encoder         : Lavf53.21.1
      copyright       : VSF


Export Audio Checkbox
---------------------

This is an unusual one. Instead of a normal on/off checkbox toggle, the :guilabel:`Export Audio` checkbox cycles among three choices.

As if that weren't confusing enough, the :guilabel:`Export audio (automatic)` option may appear different depending on your combination of distribution, desktop environment and theme. See three examples below:

Regardless of how the checkbox on the :guilabel:`Export audio (automatic)` option may appear on your installation, rest assured that when that option is showing, it is enabled.

So what do the three options mean?

.. image:: /images/exporting/render_dialog_21-08_audio_automatic.png
   :alt: Export audio option of the render dialog (automatic)
   :align: left

*Export audio (automatic)* means detect if an audio track is present and write the audio track if found

.. container:: clear-both

   .. image:: /images/exporting/render_dialog_21-08_audio_checked.png
      :alt: Export audio option of the render dialog (active)
      :align: left

   *Export audio*, when checked, means write an audio track in the rendered file even if there is no audio track to write.

.. container:: clear-both

   .. image:: /images/exporting/render_dialog_21-08_audio_unchecked.png
      :alt: Export audio option of the render dialog (not active)
      :align: left

   *Export audio*, when unchecked, means do not write an audio track in the rendered file.

The difference in behavior between enabling *Export audio* versus *Export audio (automatic)* can be seen in the situation where you have a video on the timeline but there is no audio track on the timeline and the video in the video track also does not have an audio track. An example of such a situation is shown in the screenshot below.

.. image:: /images/Kdenlive_Video_with_no_audio.png
   :alt: Kdenlive_Video_with_no_audio

In this situation, if you render with *Export audio (automatic)*, the rendered file will not have an audio track (Result 1 on screenshot below). But if you render with *Export Audio* checked, then the rendered file will contain an audio track – the track will however be empty (Result 2 on screenshot below).

.. image:: /images/Kdenlive_Render_export_audio_auto_vs_just_checked2.png
   :alt: Kdenlive_Render_export_audio_auto_vs_just_checked2

FFprobe on file generated from an audio-less track using *Export audio (automatic)*. Note only one stream – Stream #0.0 – a video stream. **Kdenlive** automatically detected there was not an audio track and so it did not write one.

.. code-block:: bash

  $ ffprobe dog_rotated_exp_audio_auto.mp4

.. code-block:: bash

    Metadata:
      major_brand     : isom
      minor_version   : 512
      compatible_brands: isomiso2avc1mp41
      encoder         : Lavf53.21.1
  Duration: 00:00:03.62, start: 0.000000, bitrate: 12592 kb/s
  Stream #0.0(und): Video: h264 (High), yuv420p, 1280x720 [PAR 1:1 DAR 16:9], 12587 kb/s, 27.83 fps, 27.83 tbr, 30k tbn, 55.66 tbc

FFprobe on file generated from an audio-less track using *Export audio* checked. Note two streams – Stream #0.0 and Stream #0.1 – the latter being an aac audio track. We forced **Kdenlive** to write an audio track even though there was not any source audio to write.

.. code-block:: bash

  $ ffprobe dog_rotated_exp_audio.mp4

.. code-block:: bash

    Metadata:
      major_brand     : isom
      minor_version   : 512
      compatible_brands: isomiso2avc1mp41
      encoder         : Lavf53.21.1
    Duration: 00:00:03.62, start: 0.000000, bitrate: 12598 kb/s

  Stream #0.0(und): Video: h264 (High), yuv420p, 1280x720 [PAR 1:1 DAR 16:9], 12587 kb/s, 27.83 fps, 27.83 tbr, 30k tbn, 55.66 tbc
  Stream #0.1(und): Audio: aac, 48000 Hz, stereo, s16, 2 kb/s

In cases where there is an audio track ...

.. image:: /images/Kdenlive_Video_plus_Audio_in_seperate_tracks.png
   :align: left
   :alt: Kdenlive_Video_plus_Audio_in_seperate_tracks

Rendering with :menuselection:`Export audio` unchecked will produce a file with no audio track – result 4 in the screenshot above.
Rendering with :menuselection:`Export audio (automatic)` (result 3 in the screenshot above) or with *Export audio* checked will produce files with Audio tracks.

.. rst-class:: clear-both


Encoder Threads
---------------

.. image:: /images/exporting/render_dialog_21-08_encoder.png
   :align: left
   :alt: Encoder options of the render dialog

Determines the value of *Encoding threads* passed to melt. For encoding to certain codecs, namely MPEG-2, MPEG-4, H.264, and VP8, kdenlive can use more than one thread and thus make use of multiple cores. Increase this number to take advantage of this feature on multi-core machines. See `melt doco - threads <https://www.mltframework.org/plugins/ConsumerAvformat/#threads>`_ and `melt FAQ <https://www.mltframework.org/faq/#does-mlt-take-advantage-of-multiple-cores-or-how-do-i-enable-parallel-processing>`_ on multi-threading.

.. _custom_render_presets:

Create Custom Render Presets
----------------------------

.. image:: /images/exporting/kdenlive_custom_render_presets.png
   :alt: kdenlive_custom_render_presets


|document-new| Creates a new preset based on the project profile.

|edit-download| Downloading additional user created presets.

|document-save-as| Save the selected preset under a new name.

|document-edit| Save the preset under the current name i.e. replace it.

|document-new| |document-save-as| |document-edit| Will open the **Save Render Preset** dialog (also shown in the screenshot below) and the :guilabel:`Parameters` section will be filled in with the render parameters of the preset that you had selected when you clicked either of the |document-new| or |document-save-as| or |document-edit| button. You can edit values in the parameters and save your own custom render preset.

**Creating new groups:** When you save a preset and enter a group name that does not yet exist, the group will be created.

.. image:: /images/exporting/edit_render_profile_22-04.png
   :alt: Dialog to edit render presets

The parameters are not limited by the UI, you can add custom parameters in the box `Additional Parameters` under the tab :guilabel:`Other`.

The parameters in the rendering presets are *melt* parameters. For an explanation of their meaning, check the *melt* `documentation <https://www.mltframework.org/docs/>`_ or type ``melt -help`` in a command prompt.

See also :ref:`render_profile_parameters`.


Rendering In Batch mode
-----------------------

If you have a lot of rendering jobs to do, you can use **Kdenlive** to create rendering scripts which you can accumulate and then execute in batch mode overnight. See :ref:`rendering`.

Alternatively, once you have submitted a rendering job on a project and it is up and running in the **Job Queue**, you can drag the render window out of the way and edit the project some more or load a new project and render that one too. The second render job submitted will go into the **Job Queue**. Editing the project after a render job is submitted will not change the settings on that job.

.. image:: /images/Kdenlive_Rendering_job_queue.png
   :width: 400px
   :alt: Kdenlive_Rendering_job_queue

Variable Bit Rate - earlier Versions
------------------------------------

.. warning::

   |outdated|

.. image:: /images/Kdenlive_Render_dialog_vbr_0.9.10.png
   :alt: File rendering dialog Variable Bit Rate - ver 0.9.10

When a variable bitrate (VBR) profile is selected, the :menuselection:`File Size` section displays a drop down for choosing the **Video quality** you want. This quality figure is a codec-dependent number representing the quality of the video that will be rendered. Generally, lower numbers mean higher quality video and larger file sizes (e.g. x264, MPEG2, VPx), but some codecs use opposite order (e.g. Theora). Profiles provided with **Kdenlive** offer these numbers ordered from best quality (almost lossless) to lower quality (still not degrading too much). The exact file size that is produced can not be predicted when using the VBR method. The idea behind this is that you specify a certain quality of video that you want through the entire video and the encoding optimizes bitrate to give you that constant quality, lowering data size for low action scenes and using more bits for high action scenes.

Example: 1min 55 seconds of 720 x 576 H.264 iPhone footage rendered at quality 15 with the H.264/AAC High Profile would produce a file size of 186 Mb. Whereas rendering the same footage at quality quality 20 produced an 83Mb file.


Constant Bit Rate - earlier Versions
------------------------------------

.. warning::

   |outdated|

.. image:: /images/Kdenlive_Render_dialog_cbr_0.9.10.png
   :alt: File rendering dialog Constant Bit Rate - ver 0.9.10

When a constant bitrate (CBR) profile is selected, the :menuselection:`File Size` section displays a drop down for choosing the **Video bitrate** you want. This is similar to the version <=0.9.8 behaviour of **Kdenlive**. You select the video bitrate you want and the video is encoded at that video bitrate across its entire length.

.. image:: /images/Kdenlive_Render_dialog_0.9.8.png
   :alt: File rendering dialog - ver 0.9.8

