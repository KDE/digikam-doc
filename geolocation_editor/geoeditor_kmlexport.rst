.. meta::
   :description: digiKam Geolocation Editor KML Export Tool
   :keywords: digiKam, documentation, user manual, photo management, open source, free, learn, easy, location, kml, export

.. metadata-placeholder

   :authors: - digiKam Team

   :license: see Credits and License page for details (https://docs.digikam.org/en/credits_license.html)

.. _geoeditor_kmlexport:

KML Export Tool
===============

.. contents::

`KML <https://en.wikipedia.org/wiki/Keyhole_Markup_Language>`_ for **Keyhole Markup Language** is an XML notation for expressing geographic annotation and visualization within two-dimensional maps and three-dimensional Earth browsers. KML was developed for use with Google Earth but Open Source Applications can also use this kind of container. KML is an open standard from the `Open Geospatial Consortium <https://en.wikipedia.org/wiki/Open_Geospatial_Consortium>`_.

.. figure:: images/geoeditor_kml_export.webp
    :alt:
    :align: center

    The digiKam Geolocation Editor Exporting GPS Info Into A KML Container

From the right sidebar tab **KML Export** several settings are available to process the list of items loaded in Geolocation Editor, in goal to generate a target as KML container.

    - **Target Type**: two kind of container can be generated, one for a local application as Google Earth running on your computer, or another one for a Web Application as Google Maps.

    - **Picture Altitude**: configure how the altitude of items to process must be interpreted, as **Clamp To The Ground**, **Relative To Ground**, or in **Absolute**.

    - **Destination Directory**: configure the folder from your computer where you want to store the KML container.

    - **Destination Path**: configure the url where you want to store the KML container. This option is enabled only if the Target Type is a Web Application.

    - **Filename**: the name used to record the KML container.

    - **Icon Size**: The icon dimensions registered in KML container and used by KML viewer application to thumbnails on the map.

    - **Image Size**: The image dimensions registered in KML container and used by KML viewer application to render contents on the map.

    - **Draw GPX Track**: enable this option to include information from a GPX trace in your KML container.

    - **GPX File**: the path from your computer to the GPX trace.

    - **Time Zone**: the world time zone used to record the GPX trace.

    - **Track Width**: the number of items to handle from the GPX trace.

    - **Track Color**: the color to use over the map to render the GPX trace.

    - **Opacity**: the transparency in percents to render the GPX trace over the map.

    - **Track Altitude**: configure how the altitude of GPX trace items must be interpreted, as **Clamp To The Ground**, **Relative To Ground**, or in **Absolute**.

Press **Generate KML File** button to render the container. If errors occurs, a resume dialog must appear with the list of problems. Finally, the exported KML container can be open in a Viewer as in the screenshot below.

.. figure:: images/geoeditor_kml_viewer.webp
    :alt:
    :align: center

    The `Open Source Marble Application <https://marble.kde.org/>`_ Importing A KML Container Generated From digiKam
