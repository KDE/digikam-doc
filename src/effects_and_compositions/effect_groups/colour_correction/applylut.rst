.. metadata-placeholder

   :authors: - Mmaguire (https://userbase.kde.org/User:Mmaguire)
             - Maris (https://userbase.kde.org/User:limerick)

   :license: Creative Commons License SA 4.0

.. _applylut:

Apply LUT
=========

.. contents::

This is the `Avfilter lut3d <https://www.mltframework.org/plugins/FilterAvfilter-lut3d/>`_ MLT filter.

Apply a 3D Look Up Table (LUT) to the video. A LUT is an easy way to correct the color of a video.

**Supported formats:**

.3dl (AfterEffects), .cube (Iridas), .dat (DaVinci), .m3d (Pandora)

**Parameters:**

Filename: File containing the LUT to be applied.

Interpolation Method: Can be Nearest, Trilinear or Tetrahedral. Defaults to Tetrahedral.


.. _examplelut:

Example of LUT Filter
=====================

Example of Manual workflow Before and after applying LUT

.. figure:: /images/image1b.png
   :width: 800px
   :alt: workflow-lut

   Figure 1 - View of the interface


Simple steps:

1. FREE LUTS – For our example, we rely on the files that can be downloaded from the address https://goo.gl/OeIFkr

2. SEVEN CUBE FILES – Download the zip file, just extract it into a folder: each of the files, which is then a simple text file, represents a Look Up Table. Those examples were developed inspired by famous films (whose titles are parodied in the file name).

3. Once package is downloaded and unpacked, open effects menu in the right corner of the program window.


.. figure:: /images/image4.png
   :width: 1200px
   :alt: workflow-lut

   Figure 2 - View of main menu.

4. Then you need to find the LUT effect to apply. There are several, the majority of which are maintained only for backwards compatibility but not for any result. The right one is Apply LUT, in the section Color correction.

.. figure:: /images/image5.png
   :width: 800px
   :alt: workflow-lut

   Figure 3 - Apply LUT

5. BALANCING – Adjusting color, for example col 3-point balance, you need to insert the effect above that of the LUT. This allows you to correct the image before it reaches the LUT, then obtaining homogeneous results with other clips.

.. figure:: /images/image6.png
   :width: 800px
   :alt: workflow-lut

   Figure 4 - Colour balance

Manually adjust the clip
========================

In addition to the LUT, other effects can be used to manually correct the colors   

.. figure:: /images/image7.png
   :width: 800px
   :alt: workflow-lut

1. CHANGE OF SHADES – This allows, for example, to color the background in blue and the actor in orange, widely used in classic Hollywood postproduction setup. A faster but less detailed alternative is Hue shift, which shifts all shades towards red or blue.


.. figure:: /images/image20.png
   :width: 800px
   :alt: workflow-lut

2. SATURATION – After changing the coloration of the image, with one of the two effects that is presented, this allows saturate the color differently depending on the brightness by drawing a curve on the canal saturation.

.. figure:: /images/imagea.png
   :width: 800px
   :alt: workflow-lut

Before and After

.. figure:: /images/image1d.png
   :width: 800px
   :alt: workflow-lut
