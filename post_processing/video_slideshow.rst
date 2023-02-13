.. meta::
   :description: The digiKam Video Slideshow
   :keywords: digiKam, documentation, user manual, photo management, open source, free, learn, easy, video, slideshow

.. metadata-placeholder

   :authors: - digiKam Team

   :license: see Credits and License page for details (https://docs.digikam.org/en/credits_license.html)

.. _video_slideshow:

Video Slideshow
===============

The Video Slideshow tool allows to create a movie from a list of photos. Generated file can be played in a video player or a TV screen. Images are presented one by one with visual effects if you need. This tool can also be used to create a time-lapse animation from shots taken with an intervalometer.

Select the images that you want to stitch and go to :menuselection:`Tools --> Create video slideshow` a wizard dialog will open up as below.

.. figure:: images/video_slideshow_01.webp
    :alt:
    :align: center

    The Video Slideshow Wizard Welcome Page

This page allows to select the contents to export: from current items selection, or from a list of albums. With the **Albums** selection mode you can generate video slideshow from Albums contents. Just check the respective Albums displayed with hierarchical nesting. On the next three tabs **Tags**, **Searches**, and **Labels** you can refine your selection using tags, labels, or previous search results in digiKam.

If you uses the **Images** selection mode only the previous selection of items from Icon-View will be processed and listed on this page as a flat list.

.. figure:: images/video_slideshow_02.webp
    :alt:
    :align: center

    The Video Slideshow Wizard Images Selection Page

Pressing on **Next** button will display all the video settings to encode the slideshow. Parameters are listed below:

    - **Number of Frames by Image**: The number of frames generated of one image to encode in video stream. This defined the time of one image will be present statically on screen. If you set an **Effect While Displaying Images**, this one will be rendered with this number of frames.

    - **Video Standard**: This is the video norm to use while encoding media, as **PAL - 25 FPS** or **NTSC - 29 FPS** (FPS: Frame Per Seconds).

    - **Video Type**: This is the video resolution to use while encoding media. Images are resized accordingly. Take care that hight resolution will needs more resources to encode and use more space on your disk.

    - **Video bit Rate**: This is the bandwidth used to encode video. a low value means a poor quality, and high value means a good quality. Take care that hight rate will needs more space on your disk.

    - **Video Codec**: The is the standard video encoding method to make the media.

    - **Effect While Displaying Image**: Select here the visual effects to apply on image while **Number of Frames by Image**.

    - **Transition Between Images**: Select here the visual effect to apply as transition outside the **Number of Frames by Image**.

On the bottom of this view, the tool calculate the delay for each images on screen including applied visual effect, and the total duration of the slideshow.

.. figure:: images/video_slideshow_03.webp
    :alt:
    :align: center

    The Video Slideshow Wizard Video Settings Page

Pressing on **Next** button will display all the media container settings to host the encoded contents. Parameters are listed below:

    - **Media Container Format**: The file format container to host video media.

    - **Destination folder**: The directory on disk to store the video file.

    - **If Target File Exists**: Allows to overwrite or not video file is it already exist in directory.

    - **Open in Player**: Allows to render video slideshow and end to encoding, with the digiKam internal player or the default desktop application.

.. figure:: images/video_slideshow_04.webp
    :alt:
    :align: center

    The Video Slideshow Wizard Output Settings Page

Pressing on **Next** button will start the video encoding. This stage can take a while depending of the number of items to process and the delay to use for each image to genreate as video.

.. figure:: images/video_slideshow_05.webp
    :alt:
    :align: center

    The Video Slideshow Wizard Generating Output File

Finally, when encoding is done, a preview of the video file is displayed.

.. figure:: images/video_slideshow_preview.webp
    :alt:
    :align: center

    The Video Slideshow Preview Displayed in digiKam Internal Player
