.. metadata-placeholder

   :authors: - TheDiveO
             - Eugen Mohr
             
   :license: Creative Commons License SA 4.0

.. moved from https://kdenlive.org/en/project/color-hell-ffmpeg-transcoding-and-preserving-bt-601/   

.. _color_hell_ffmpeg_transcoding_and_preserving_BT.601:

Color Hell: Ffmpeg Transcoding and Preserving BT.601
====================================================

From time to time, you may get into weird digital video territory quite unexpectedly. For instance, you just want to cut some screen records made on mobile devices, such as tablets or mobile phones. What could possibly go wrong? Colors, for instance…


“Run-of-the-Mill” Footage
-------------------------

The drama starts with screen recording footage that seems quite innocent and normal at first sight. It may have been recorded on Android 7 devices using a screen recording app (such as «AZ Screen Recording», but not the “Pro” fake). And this footage has two slightly unusual properties:

* a *highly variable frame rate*,
* it’s using `BT.601 <https://en.wikipedia.org/wiki/Rec._601>`_ , instead of BT.709 like so much HD footage these days.

Should cause no problems, right? Well…

As it turns out, Kdenlive’s media engine `MLT <https://www.mltframework.org/>`_ can exhibit some issues with video footage that has a highly variable frame rate, such as between 0.001 and 100+ fps. The symptoms are subtle, yet endanger production quality: it seems as if MLT may well pick a future frame which is way off in regions with a low framerate. While this isn’t an issue for a suitably high framerate, this causes odd results in other places. For instance, in my productions user touch interaction shows up even a few seconds before the interaction will appear. This is probably caused by a very low fps during the inactivity period just before the user interaction.

Alas, transcoding to a fixed frame rate surely is one of `ffmpeg’s <https://www.ffmpeg.org/>`_ easy tasks (this example assumes a constant project frame rate of 25 fps):

$ ``ffmpeg -i raw.mp4 -r 25 -crf 18 screen-rec.mp4``

The constant frame rate cures the issues mentioned above, so the results are as to be expected. Except…


Easy Transcoding: Color Me Bad
------------------------------

.. container:: clear-both

   .. image:: /images/transcoding-color-change.jpeg
      :align: left
      :alt: transcoding-color-change
      :width: 350px

   Unfortunately, the resulting video now shows shifted colors! It might not be too obvious in the first place, but it can be quite prominent when you work more with your footage. And it gets clearly visible to your audience in case you are going to mix this footage side-by-side with further processed versions of it, such as extracted frames for stills.

   A more close inspection, either using Kdenlive’s built-in clip properties pane or `ffprobe <https://www.ffmpeg.org/ffprobe.html>`_, reveals that the *transcoded file* **lacks the BT.601 color profile indication**. Yet, ffmpeg did *not transform the colors* at all during transcoding, and simply dropped the correct color profile information!

.. rst-class:: clear-both

Makeshift Measures
------------------

.. container:: clear-both

   .. image:: /images/transcoding-screencast-bad-override.jpeg
      :align: left
      :alt: transcoding-screencast-bad-override
      :width: 350px

   Of course, there’s always Kdenlive’s ability to overwrite source clip properties using the built-in clip properties pane.

   Simply select the transcoded video clip in the project bin. Then go to the clip properties pane and select its “Force Properties” tab which shows a *writing pen*. Check “Colorspace” and then select “ITU-R 601”. Kdenlive now applies the correct color profile.

   While very easy, this method has its limitations; it’s fine while you keep working *solely inside the Kdenlive editor and its MLT renderer*. But as soon as you need to pull in external video tools, such as *ffmpeg* for image extraction…, you will loose: these tools don’t know about Kdenlive’s source clip property overrides. We thus need to get the correct color profile information right into the transcoded video files themselves.

.. rst-class:: clear-both

Preserving BT.601 in Transcoding
--------------------------------

To make this matter worse, the seemingly obvious color profile transformation ``-vf colormatrix=bt601:bt601`` simply doesn’t work: ffmpeg complains about not being to transform between the same input and output color profile. *Grrr*.

It took quite some extensive searching until I found the missing puzzle piece on Stack Exchange’s Video Production Q&A site: `ffmpeg: explicitly tag h.264 as bt.601, rather than leaving unspecified? <https://video.stackexchange.com/questions/16840/ffmpeg-explicitly-tag-h-264-as-bt-601-rather-than-leaving-unspecified>`_

There’s a catch to watch out for: BT.601 comes in PAL and NTSC flavors which feature slightly different primary chromaticities, transfer curves, and colorspaces. So check your raw footage first using ``ffprobe`` (or ``mediainfo``) which one has been used during recording in your case. Please note that it doesn’t matter that your screen recording hasn’t standard definition (SD) resolution at all, but it does matter when it comes to encoding color.

I’m Not Quite Dead Yet: PAL and NTSC DNA
----------------------------------------

So how do we find out if a given video recording file, say ``raw.mp4``, uses the PAL or NTSC color space? Of course, ``ffprobe`` comes to our rescue. But in order to not get lost in all the nitty-gritty details ``ffprobe`` will throw at you, we need to tame it using a few options and ``grep``:

$ ``ffprobe -v error -show_streams raw.mp4 | grep color_``

This should give you something along these lines:

``color_range=tv``
``color_space=bt470bg``
``color_transfer=smpte170m``
``color_primaries=bt470bg``

Someone surely thought that using a TV standard definition-related BT.601 is a clever idea to record mobile device screens. Must have been a hipster with a old-school tube TV sitting on his desk. Alas, the line ``color_space=...`` will tell us whether we’re dealing with PAL (``=bt470bg``) or NTSC (``=smpte170m``).

PAL
---

If it’s **PAL chromaticities** (``=bt470bg``), we then need to transcode as follows:

| $ ``ffmpeg -i raw.mp4``  
| ``-color_primaries bt470bg -color_trc gamma28 -colorspace bt470bg``   
| ``-r 25 -crf 18 screen-rec.mp4``

NTSC
----

For **NTSC chromaticities** (``=smpte170m``), we’ll need a different set of primaries, transfer curve, and colorspace:

| $ ``ffmpeg -i raw.mp4``  
| ``-color_primaries smpte170m -color_trc smpte170m -colorspace smpte170m``   
| ``-r 25 -crf 18 screen-rec.mp4``




.. container:: clear-both

   .. image:: /images/transcoding-comparism.jpeg
      :align: left
      :alt: transcoding-comparism
      :width: 350px

   In any case, Kdenlive/MLT now correctly see the transcoded video using the BT.601 color profile. In addition, other media tools correctly detect the color profile too – unless they are broken in that they don’t understand BT.601 at all.