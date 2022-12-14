.. meta::
   :description: Movie File Formats Supported by digiKam
   :keywords: digiKam, documentation, user manual, photo management, open source, free, learn, easy

.. metadata-placeholder

   :authors: - Gilles Caulier <caulier dot gilles at gmail dot com>

   :license: Creative Commons License SA 4.0

.. _movie_formats:

Movie Files
===========

.. contents::

Introduction
------------

Many digital cameras support taking of short movie clips. These clips are usually stored in AVI, MOV, or MP4 format. digiKam understands metadata from these formats and will generate thumbnails for the movie files.

However, digiKam is not a movie editing application and it does not have any built-in movie editing capabilities. If you double click on a movie file digiKam you can preview video or choose a dedicated viewing / editing application through your desktop settings.

Video Formats
-------------

digiKam relies on `FFMpeg Multimedia framework <https://ffmpeg.org/>`_ to handle video files. FFmpeg is a powerful video toolkit, which include all codecs that digiKam needs to play video files.

FFmpeg codec is available under Linux® desktop, MacOS, and Windows. You don't need to install extra video codecs on your computer.

Video Features
--------------

With digiKam, you will be able to read video metadata, such as movie length, video frames per second, video size, and encoding options, in order to populate the database at scanning and to perform searches on your collection about video properties. You will be able to play video in embedded preview mode, and in a slideshow. This includes previewing video from your camera device before downloading (only with USB Mass Storage connection mode).
