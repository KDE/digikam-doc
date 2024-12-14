.. meta::
   :description: digiKam Maintenance Tool to Scan for New Items
   :keywords: digiKam, documentation, user manual, photo management, open source, free, learn, easy, maintenance, scan, new, items

.. metadata-placeholder

   :authors: - digiKam Team

   :license: see Credits and License page for details (https://docs.digikam.org/en/credits_license.html)

.. _maintenance_newitems:

:ref:`Scan for New Items <maintenance_tools>`
=============================================

.. contents::

.. figure:: images/maintenance_new_items.webp
    :alt:
    :align: center

    The digiKam Maintenance Options to Scan for New Items

The **Scan for New Items** tool will scan the collections you defined in :menuselection:`Settings --> Configure digiKam...` and the **Collections** dialog page, looking for image files you have added to your collections while digiKam was not running. New entries are added to the digiKam database corresponding to each new image file found during the scan.

The new items scans are performed in the background, so you can continue to use digikam during a scan. While scanning for new items, a progress indicator is displayed in the bottom right corner of the main window.

.. figure:: images/maintenance_scan_process.webp
    :alt:
    :align: center

    The Scan for New Items Process Working in the background

This tool can also be directly called from the main menu item :menuselection:`Tools --> Scan for New Items`.

Scanning for New Items Automatically at Startup
-----------------------------------------------

You can also run this process automatically on digiKam startup by checking **Scan for new items at startup** in :menuselection:`Settings --> Configure digiKam... --> Miscellaneous page --> Behavior tab`.

Be aware that scanning for new items at startup can take a while, slowing-down application initialization. If your computer is fast enough, the background scan will have no effect on the usability of digiKam while scanning. Scanning can introduce delays if your collections are huge or if you use a remote database. In these cases you may want to disable automatic scans and instead use the maintenance tool to perform a manual scan when necessary.

Another option from this setup panel named **Fast scan (detects new, deleted and renamed items)** can also be turned on to significantly speed up the scan. This scan only looks for new, deleted, or renamed items. This option must be deactivated in order to find items that have been otherwise edited or changed.

.. figure:: images/maintenance_scan_setup.webp
    :alt:
    :align: center

    The digiKam Options to Scan for New Items from the Setup Dialog

.. note::

   digiKam uses a hash to identify files quickly and register items changes in the database while scanning. For performance reasons this is not a full hash of the file, but the file size is included, so it's reliable enough. digiKam uses these same parameters to try to find files during a scan that have been externally moved or renamed. To have make the scan process as efficient as possible, we recommend doing file operations within digiKam, avoiding changing files and folders using external applications such as a file manager.
