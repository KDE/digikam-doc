.. meta::
   :description: digiKam Right Sidebar Maps View
   :keywords: digiKam, documentation, user manual, photo management, open source, free, learn, easy, maps, geolocation

.. metadata-placeholder

   :authors: - digiKam Team

   :license: see Credits and License page for details (https://docs.digikam.org/en/credits_license.html)

.. _maps_view:

Maps View
=========

.. contents::

There are four tools regarding geolocation in digiKam and two in Showfoto:

    - The **Map Mode** of the Image Area which displays images with GPS data on a map depending on the selection on the Left Sidebar, e.g. the images in the album you selected in the Album View, the images with a certain tag assigned (selected in the Tag View), with a certain label and so on. This is only available in digiKam.

    - The :ref:`Maps Search section <mapsearch_view>` on the Left Sidebar of digiKam which is the search tool for finding images by their GPS data. This is also only available in digiKam.

    - The :ref:`Geolocation Editor <geoeditor_overview>` which is accessible via :menuselection:`Item --> Edit Geolocation...` :kbd:`Ctrl+Shift+G` (:menuselection:`File --> Edit Geolocation...` in Showfoto) and allows to set and to edit GPS data.

    - The **Map** tab on the Right Sidebar we are talking about here which shows the location of the image on a map and is purely informative.

This tab shows a map of orientation where you will find a marker or a thumbnail to indicate the GPS location of the selected image. The GPS coordinates and the time information are displayed below the widget. You can zoom in and out with the mouse wheel by either scrolling it or hold and drag it. Pan by holding down the left mouse button.

.. figure:: images/sidebar_metadatagps.webp
    :alt:
    :align: center

    The Map View From Right Sidebar

For navigating on the map, refer to the :ref:`Map Search section <mapsearch_view>`. The meaning of **GPS** and functions and buttons that apply to all three geolocation parts are described in the :ref:`Geolocation Editor chapter <geoeditor_overview>` of this handbook. This applies to the context menu on the map and the line of buttons under the map except the last one.

For information about the different map services you can use the drop-down field under the line of buttons. Choose a service here and then click the **See more information on the Internet** button to the right.

The displayed positioning data are actually stored in the image's EXIF tags. That allows the location to be read by any other application that can understand EXIF GPS data.
