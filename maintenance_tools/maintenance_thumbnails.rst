.. meta::
   :description: digiKam Maintenance Tool Rebuild Thumbnails
   :keywords: digiKam, documentation, user manual, photo management, open source, free, learn, easy

.. metadata-placeholder

   :authors: - Gilles Caulier <caulier dot gilles at gmail dot com>

   :license: Creative Commons License SA 4.0

.. _maintenance_thumbnails:

Rebuild Thumbnails
==================

.. contents::

.. figure:: images/maintenance_rebuild_thumbnails.webp

Rebuilding the thumbnails might be necessary if you worked on your images with other applications or if you changed the thumbnail size in Settings → Configure digiKam... → Views → Tree-Views. The “ Scan for changed or non-cataloged items” option can speed up the process in the first case or if you just added pictures to your collection.

While the rebuild thumbnails process is under progress, notification on the bottom right of main windows will be visible to indicate the amount of items already done.

.. figure:: images/maintenance_thumbnails_process.webp

.. note::

    This process can also be directly called by F5 keyboard shortcuts to rebuild thumbnails for the current selected album.

An option from Setup/Views/Icons pannel named **Use Large Thumbnail Size for High Screen Resolution** can be turned on to render icon-view with large thumbnail size, for example in case of 4K monitor is used. By default this option is turned off and the maximum thumbnail size is limited to 256x256 pixels. When this option is enabled, thumbnail size can be extended to 512x512 pixels. This option will store more data in thumbnail database and will use more system memory. digiKam needs to be restarted to take effect, and Rebuild Thumbnails option from Maintenance tool needs to be processed over whole collections. 

.. figure:: images/maintenance_thumbnails_setup.webp

.. important::

   Even if thumbnails are stored in the database using wavelets compression PGF format, large collection can generate huge database storage. Take a care to use a place to store the database with enough space available.
