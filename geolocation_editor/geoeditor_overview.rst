.. meta::
   :description: Overview to digiKam Geolocation Editor
   :keywords: digiKam, documentation, user manual, photo management, open source, free, learn, easy, gps, geolocation, editor, coordinates

.. metadata-placeholder

   :authors: - digiKam Team

   :license: see Credits and License page for details (https://docs.digikam.org/en/credits_license.html)

.. _geoeditor_overview:

:ref:`Overview <geolocation_editor>`
====================================

Geolocation means assigning, editing and using metadata which describe the geographic place where images or videos were taken. The source of these metadata can be your camera, a separate GPS receiver or other means of geographical information, in particular maps.

Geolocation is not just a tool for professional photographers, there are a variety of reasons for linking an image to a precise geographical location. While not everyone will acquire images with automatic GPS data recording, many people including environmental planners, military, police, construction bureaus, and real estate agencies, can benefit from image geolocation.

But even amateur photographers find geotagging useful. If enough time has passed that you forget where an image was taken, it is nice to open a map with a simple click to display the locations of your images. And if you want to send your image to someone else, they too can see where the image was taken. Or maybe you simply need to better document the picture. In any case, having position data stored in a photo is great.

GPS (global positioning system) is used as a generic term throughout this document. It just means a location in the common spherical coordinate system that can be displayed on a map. The actual technical implementation that provides the actual position data can be the American GPS, the Russian GLONASS, the European GALILEO, China's BeiDou or any other system that might come on line in the future.

Geolocation functionality is enabled via :menuselection:`Settings --> Configure digiKam --> Plugins --> Geolocation Edit`

There are four tools involving geolocation in digiKam and two in Showfoto:

    - The **Map Mode** of the Image Area displays the locations of geo-tagged images (images with GPS data) on a map depending on the selection in the Left Sidebar, e.g. the images in the album you selected in the Album View, the images with a specified tag (selected in the Tag View), images with a specified label, and so on. This is only available in digiKam.

    - The **Map** tab on the Left Sidebar is the search tool for selecting images based on their GPS data. This is also only available in digiKam.

    - The :ref:`Geolocation Editor <geoeditor_overview>`, the topic of this section, is the tool to set and to edit GPS data. The Geolocation Editor is accessible via :menuselection:`Item --> Edit Geolocation...` :kbd:`Ctrl+Shift+G` (:menuselection:`File --> Edit Geolocation...` in Showfoto).

    - The :ref:`Map <maps_view>` tab on the Right Sidebar shows a map with a marker or a thumbnail to indicate the GPS location of the selected image. The map display is purely informative. The GPS coordinates are displayed below the map, along with the time the image was taken.


.. figure:: images/geoeditor_main_view.webp
    :alt:
    :align: center

    The digiKam Geolocation Editor Main Dialog

.. note::

    These tools work for image formats that have Exif or XMP metadata supports or with items with an accompanying sidecar file.
