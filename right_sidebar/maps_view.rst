.. meta::
   :description: digiKam Right Sidebar Maps View
   :keywords: digiKam, documentation, user manual, photo management, open source, free, learn, easy

.. metadata-placeholder

   :authors: - Gilles Caulier <caulier dot gilles at gmail dot com>

   :license: Creative Commons License SA 4.0

.. _maps_view:

Maps View
=========

.. contents::

There are four tools regarding geolocation in digiKam and two in Showfoto:

    - The Map mode of the Image Area which displays images with GPS data on a map depending on the selection on the Left Sidebar, e.g. the images in the album you selected in the Album View, the images with a certain tag assigned (selected in the Tag View), with a certain label and so on. This is only available in digiKam.

    - The Map View on the Left Sidebar of digiKam which is the search tool for finding images by their GPS data. This is also only available in digiKam.

    - The Geolocation Editor which is accessible via Item → Edit Geolocation... (Ctrl+Shift+G) (File → Edit Geolocation... in Showfoto) and allows to set and to edit GPS data.

    - The Map tab on the Right Sidebar we are talking about here which shows the location of the image on a map and is purely informative. 

All four are based on the Marble widget.

This tab shows a map of orientation where you will find a marker or a thumbnail to indicate the GPS location of the selected image. The GPS coordinates and the time information are displayed below the widget. You can zoom in and out with the mouse wheel by either scrolling it or hold and drag it. Pan by holding down the left mouse button.

.. figure:: images/using-sidebar-metadatagps.png

For navigating on the map refer to Marble handbook, Chapter 2. The meaning of “GPS” and functions and buttons that apply to all three geolocation parts are described in the Geolocation Editor chapter of this handbook. This applies to the context menu on the map and the line of buttons under the map except the last one.

For information about the different map services you can use the drop-down field under the line of buttons. Choose a service here and then click the See-more-information-on-the-Internet button to the right.

The displayed positioning data are actually stored in the image's EXIF tags. That allows the location to be read by any other application that can understand EXIF GPS data.
