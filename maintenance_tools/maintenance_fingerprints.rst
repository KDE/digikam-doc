.. meta::
   :description: digiKam Maintenance Tool to Rebuild Fingerprints
   :keywords: digiKam, documentation, user manual, photo management, open source, free, learn, easy, maintenance, fingerprints

.. metadata-placeholder

   :authors: - digiKam Team

   :license: see Credits and License page for details (https://docs.digikam.org/en/credits_license.html)

.. _maintenance_fingerprints:

:ref:`Rebuild Fingerprints <maintenance_tools>`
===============================================

.. figure:: images/maintenance_rebuild_fingerprints.webp
    :alt:
    :align: center

    The digiKam Maintenance Options to Rebuild the Fingerprints

Fingerprints are necessary for finding duplicates and similar items and for finding images by sketches. For a detailed description see the :ref:`Similarity View <similarity_view>` section of this manual.

The **Rebuild Fingerprints** tool provides only one option to rebuild the contents in the database: **Scan for Changed or Non-Cataloged Items**. This option speeds the rebuild process by ignoring unchanged items that are already in the database.

.. note::

    This process can also be called from the **Similarity View** in the left sidebar by clicking the **Update Fingerprints** button.

    .. figure:: images/maintenance_update_fingerprints.webp
        :alt:
        :align: center

        The digiKam Update Similarity Button from the Left Sidebar

While the rebuild fingerprints process is underway, a progress indicator is displayed in the bottom right corner of the main window.

.. figure:: images/maintenance_fingerprints_process.webp
    :alt:
    :align: center

    The digiKam Rebuild Fingerprints Process Running in the Background
