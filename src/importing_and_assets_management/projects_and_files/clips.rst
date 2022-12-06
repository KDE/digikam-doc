.. meta::
   :description: Project bin in Kdenlive video editor
   :keywords: KDE, Kdenlive, add clips, animation, color clip, image, title clip, online resources, editing, timeline, documentation, user manual, video editor, open source, free, learn, easy


.. metadata-placeholder

   :authors: - Annew (https://userbase.kde.org/User:Annew)
             - Claus Christensen
             - Yuri Chornoivan
             - Gallaecio (https://userbase.kde.org/User:Gallaecio)
             - Simon Eugster <simon.eu@gmail.com>
             - Ttguy (https://userbase.kde.org/User:Ttguy)
             - Jack (https://userbase.kde.org/User:Jack)
             - Roger (https://userbase.kde.org/User:Roger)
             - Carl Schwan <carl@carlschwan.eu>
             - Eugen Mohr
             - Tenzen (https://userbase.kde.org/User:Tenzen)

   :license: Creative Commons License SA 4.0


.. _clips:

Clips
=====

.. contents::

See also :ref:`clip_menu`.

.. _add_clip:


Clips (Video, Audio, Images and Animation)
------------------------------------------

The |kdenlive-add-clip| button (or :guilabel:`Add Clip or Folder...` or double click into an empty place in the project bin) brings up the **Add Clip** Dialog where you can choose video, audio, animation (*new in version 22.08*) or still image clips to add to :ref:`project_tree`.

.. image:: /images/Add_clip_dialog.png
   :width: 450px
   :align: center
   :alt: Add_clip_dialog

The button |view-preview| labeled 1 toggles File Preview on and off (applies to image files only). 

The slider labeled 2 adjusts the size of the preview icons. 

Checkbox :guilabel:`Import image sequence` (labeled 3) enables the import of a series of images that can be used to make a stop motion animation.

.. versionadded:: 21.12

Checkbox :guilabel:`Ignore subfolder structure` (labeled 4) enables import video footage or audio recording folders while automatically ignoring any sub-folder structures created by some devices, such as the Sony XDCam, Panasonic P2, Canon camcorders or Zoom audio recorders.

You can add other types of clips by choosing a clip type from the menu brought up from the drop down button next to the |kdenlive-add-clip| button.

.. image:: /images/Kdenlive_Add_other_clip_types.png
   :align: center
   :alt: Kdenlive_Add_other_clip_types

.. _add_color_clip:


Color clips
-----------

:guilabel:`Add Color Clip...`: Color clips are images composed of a single color that can be added to the Project Bin. They can be useful to provide a background on which to place titles.

Add color clips by choosing :menuselection:`Add Color Clip` from the drop down button next to the |kdenlive-add-clip| button.

This brings up the **Color Clip** dialog from which you can choose a color and a duration.

.. image:: /images/Add_color_clip.png
   :align: center
   :width: 200px
   :alt: Add_color_clip

Clicking :menuselection:`OK` adds the clip to the project bin. The clip can then be dragged to the timeline. The duration of the color clip can be adjusted on the timeline.





.. _add_slideshow_clip:

Image Sequence clips
--------------------

:guilabel:`Add Image Sequence`: Image Sequence clips are clips created from a series of still images. The feature can be used to make an animation from a collection of still images or to create a slideshow of still images. To create the former, use a short frame duration; to create the latter, use a long frame duration.

To create an image sequence clip, choose :menuselection:`Add Image Sequence` from the :menuselection:`Add Clip` drop down list.

.. image:: /images/Create_slide_show_clip.png
   :align: center
   :width: 300px
   :alt: Create_slide_show_clip

From the **Image Sequence** dialog choose :menuselection:`Filename pattern` as **Image selection method**.

Browse to  the location of the images which will make up your image sequence and select the first image. The subsequent images that are to be used in the slide show will be selected based on some sort of filename algorithm that predicts what the next image file name should be.

For example, if the first image is :file:`100_1697.jpg` then the next will be :file:`100_1698.jpg`, etc.

Select an appropriate frame duration – this defines how long each image be displayed.

Then hit :menuselection:`OK`.  A video file made up of all the images in the folder from which you selected the first frame file from will be added to the Project Bin.

You can then drag this video to the timeline.

Center crop: automatically fills the output video frame with the images while maintaining their aspect ratio by zooming the image and cropping equal amounts from each edge until can fill the full frame. Without this option, the image will not be zoomed, but black bars will appear when the photo orientation or aspect does not match the video's.

Animation: adds preset slow smooth pan and zoom effects also known as the Ken Burns Effect. You can choose no animation, pans only, zooms only, or a combination of pans and zooms. Each option also has a low pass filter to reduce the noise in the images that may occur during this operation. Low pass filtering is much slower, so you should preview without it, and then enable it to render.

Title clips
-----------

See :ref:`titles`.


.. _add_animation:

Create Animation
----------------

.. versionadded:: 22.08

:guilabel:`Create Animation...`: Creates a new animation. Give a name for your new animation and it opens Glaxnimate and adds the newly created animation to the project bin. You can then edit the animation in Glaxnimate by right-click on the animation and choose :guilabel:`Edit Clip` and whenever you save it, it is automatically updated in Kdenlive.

Kdenlive supports `Json` (Lottie animations) and `rawr` (Glaxnimate animation) animation.

`Json` and `rawr` files contains an alpha channel so the imported animations have a background which is not visible.

If Glaxnimate is not installed on your computer following message pops-up:

.. image:: /images/Kdenlive_install_Glaxnimate.png
   :alt: Kdenlive_install_Glaxnimate

For Glaxnimate installation see :ref:`here <default_apps>`.

Online Resources
----------------

See :ref:`online_resources`.


Stop Motion
-----------

See :ref:`stop_motion_capture`.


.. _proxy_clip:

Proxy clips
-----------

.. image:: /images/Kdenlive_ProxyClipsSettings.png
   :align: center
   :width: 500px
   :alt: Activating proxy clips

*Proxy clips* create a lower-quality transcode of the original footage for use in real-time rendering in the project monitor.  This allows for a smoother editing experience even on slower computers with High Definition footage.  When rendering, by default, the original quality footage is used and not the proxy footage. For example, Video decoding of H.264 or H.265 clips, requires a lot of computing power to decode and could cause playback *stutter* when rendering effects in real time.

Proxy clips can be enabled/disabled for the current project in the Project Settings (:menuselection:`Project --> Project Settings... --> Proxy tab --> Enable Proxy Clips option`).

To enable proxy clips by default for new projects, go to :menuselection:`Settings --> Configure Kdenlive... --> Proxy Clips page --> Enable Proxy Clips option`.
See also the :ref:`project_settings` page.

.. image:: /images/Proxy_clip_creation.png
   :align: left
   :width: 210px
   :alt: Proxy_clip_creation

As soon as proxy clips are enabled, they can be generated for specific project clips in the Project Bin widget via the context menu :menuselection:`Proxy Clip`. After you select :menuselection:`Proxy Clip` for a clip, a job will start to create the clip. You can view the progress of this job by looking at the little gray progress bar that appears at the bottom of the clip in the Project Bin – see picture. Clicking :menuselection:`Proxy Clip` again disables the proxy for this clip.

You can multi-select clips in the Project Bin and select :menuselection:`Proxy Clip` to start a batch proxy clip generation job which will queue up multiple proxy clip generation jobs.

.. image:: /images/Proxy_clip_creation_completed.png
   :align: left
   :width: 210px
   :alt: Proxy_clip_creation_completed

Once the proxy clip creation has completed, the proxy clip will appear with a **P** icon in the Project Bin.

When rendering to the final output file, you can choose whether to use the proxy clips as well. It is disabled by default , but for a quick rendering preview it is useful.

.. _clip_properties:

Clip Properties
---------------

You can display and edit clip properties by selecting a clip in the :ref:`project_tree` and choosing :menuselection:`Clip Properties` from the :menuselection:`Project` menu or from the right-click menu. Or by turning on the display of clip properties the :menuselection:`View` and enable :guilabel:`Clip Properties`.


File Info
~~~~~~~~~

.. figure:: /images/Clip_properties_video.png
   :alt: Clip_properties_video

   The :guilabel:`File Info` tab displays information about the file.


Properties
~~~~~~~~~~

.. image:: /images/Clip_properties_advanced.png
   :align: left
   :width: 340px
   :alt: Clip_properties_advanced

The :menuselection:`Properties` tab displays advanced properties of the clip where you can select a check box and then force the clip to take the property you specify. For example, you can use :menuselection:`Aspect ratio` to tell a clip that seems to have forgotten it was 16:9 ratio that it really is 16:9 ratio.

.. container:: clear-both

    Advanced Clip property options are:

    * Duration: Change the clip duration. If the duration is shorter than the clip duration, then the clip is **cropped**. If the duration is bigger than the clip duration, then the last image is repeated until the new duration is over.

    * Aspect ratio: Change the clip aspect.

    * Proxy clips: Enable a proxy clip for this clip. See :ref:`clips`.

    * Frame rate: Change the clip frame rate. See `Wikipedia Frame rate <https://en.wikipedia.org/wiki/Frame_rate>`_.

    * Scanning

    * Field order

    * Disable autorotate

    * Threads

    * Video stream

    * Audio stream

    * Colorspace

    * :ref:`full_luma`


.. rst-class:: clear-both

.. _audio_properties:

Audio properties
~~~~~~~~~~~~~~~~

.. image:: /images/Audio-properties.png
   :align: left
   :width: 340px
   :alt: Audio-properties

For each channel you can adjust:

1. Choose which audio channel should be enabled or disabled. Rename with double click.
2. Normalize the channel
3. Swap the channels
4. Copy a channel on the other one
5. Adjust the volume

for all channels:

6. Adjust the synchronization time related to the video of the clip.


.. rst-class:: clear-both

Markers
~~~~~~~

.. image:: /images/Clip_properties_Markers.png
   :width: 300px
   :align: left
   :alt: Clip_properties_Markers

You can use the :menuselection:`Markers` tab to add markers for certain points in the source file that are important. However, it is probably easier to add markers to your clips via the  :ref:`monitors` because that allows you to preview the file at the location where you are adding the marker.

Once markers are put in your clip, you can access them in the :ref:`monitors` by right-clicking and selecting :menuselection:`Go To Marker` (see picture.)  Also note how the markers appear as red vertical lines in the **Clip Monitor** (see yellow highlighted regions in the picture.) You can turn on the display of the marker comments in the timeline too (see :ref:`editing`).

.. image:: /images/Markers_in_clip_monitor.png
   :width: 450px
   :align: left
   :alt: Markers_in_clip_monitor

Markers can also be added to clips on the timeline. :ref:`right_click_menu` the clip and choose :menuselection:`Markers --> Add Marker`.  Markers added this way also appear in the clip in the Project Bin.


.. rst-class:: clear-both

Metadata
~~~~~~~~

You expect this to show any meta data that is contained in the clip. Does not appear to work.


Analysis
~~~~~~~~

.. image:: /images/Kdenlive_Clip_properties_analysis.png
   :align: left
   :alt: Kdenlive_Clip_properties_analysis

You can view and delete motion vector data that is associated with the clip from here. This is data created by :ref:`auto_mask`

Button 1 Will delete the selected analysis data, Button 2 will allow you to export the data (semi colon delimited text file), Button 3 will allow you to import analysis data.


.. rst-class:: clear-both

Generators
----------

Counter
~~~~~~~

.. image:: /images/Kdenlive_Counter_dialog.png
   :align: left
   :width: 400px
   :alt: Kdenlive_Counter_dialog

This generates a counter timer clip in various formats which you can put onto the timeline.

You can choose to have the clip count up by checking that option, otherwise it will count down by default. The :guilabel:`No Background` option will remove the background from the counter leaving only the grey background without the lines.

To change the size and position of the clip, you can add an effect to the clip on the timeline such as the :ref:`pan_and_zoom` or the :ref:`transform`.


.. rst-class:: clear-both

White Noise
~~~~~~~~~~~

.. image:: /images/Kdenlive_Noize_generator.png
  :align: left
  :width: 400px
  :alt: Kdenlive_Noize_generator

This generates a video noise clip – like the "snow" on an out-of-tune analogue TV.
In ver 17.04 it generates audio white noise as well as video snow.


.. rst-class:: clear-both

Color Bars
~~~~~~~~~~

.. image:: /images/Kdenlive_Colour_bars.png
  :align: left
  :width: 400px
  :alt: Kdenlive_Colour_bars

This generator came in to **Kdenlive** around ver 17.04.
Generates a color test pattern of various types.
Including PAL color bars, BBC color bars, EBU color bars, SMPTE color bars, Philips PM5544, FuBK
