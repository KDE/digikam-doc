.. meta::
   :description: digiKam Maintenance Tool to Rebuild Thumbnails
   :keywords: digiKam, documentation, user manual, photo management, open source, free, learn, easy, maintenance, thumbnails

.. metadata-placeholder

   :authors: - digiKam Team

   :license: see Credits and License page for details (https://docs.digikam.org/en/credits_license.html)

.. _maintenance_thumbnails:

Rebuild Thumbnails
==================

.. contents::

.. figure:: images/maintenance_rebuild_thumbnails.webp
    :alt:
    :align: center

    The digiKam Maintenance Options to Rebuild Thumbnails

Rebuilding the thumbnails might be necessary if you worked on your images with other applications or if you changed the thumbnail size.

From :menuselection:`Settings --> Configure digiKam...` and **Tree-Views** tab from **Views** panel, the option **Use Large Thumbnail Size for High Screen Resolution** can be turned on to render **Icon-View** with large thumbnail size, for example in case of 4K monitor is used. By default this option is turned off and the maximum thumbnail size is limited to 256x256 pixels.

When this option is enabled, thumbnail size can be extended to 512x512 pixels. This option will store more data in thumbnail database and will use more system memory. digiKam needs to be restarted to take effect, and this **Rebuild Thumbnails** tool needs to be processed over whole collections. 

.. figure:: images/maintenance_thumbnails_setup.webp
    :alt:
    :align: center

    The digiKam Views Setup Panel and the Large Thumbnail Option

.. important::

   Even if thumbnails are stored in the database using wavelets compression PGF format, large collection can generate huge database storage. Take a care to use a place to store the database with enough space available.

.. note::

    From :menuselection:`Settings --> Configure digiKam...` and **Behaviour** tab from **Miscelleneous** panel, the **Scan** options can speed up the process in the first case or if you just added pictures to your collection.

While the rebuild thumbnails process is under progress, notification on the bottom right of main windows will be visible to indicate the amount of items already done.

.. figure:: images/maintenance_thumbnails_process.webp
    :alt:
    :align: center

    The Rebuild Thumbnails Process Working in the Background

.. note::

    This process can also be directly called by :kbd:`F5` keyboard shortcuts to rebuild thumbnails for the current selected album.
