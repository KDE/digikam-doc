.. meta::
   :description: digiKam Maintenance Tool to Rebuild Fingerprints
   :keywords: digiKam, documentation, user manual, photo management, open source, free, learn, easy, maintenance, fingerprints

.. metadata-placeholder

   :authors: - digiKam Team

   :license: see Credits and License page for details (https://docs.digikam.org/en/credits_license.html)

.. _maintenance_fingerprints:

Rebuild Fingerprints
====================

.. contents::

.. figure:: images/maintenance_rebuild_fingerprints.webp
    :alt:
    :align: center

    The digiKam Maintenance Options to Rebuild the Fingerprints

Fingerprints are necessary for finding duplicates and similar items and for finding images by sketches. For detailed description see :ref:`the Similarity View section <similarity_view>`.

This process provides only one option to rebuild the contents in the database: **Scan for Changed or Non-Cataloged Items**. This option will run the rebuild faster to prevent to process already register items in database.

.. note::

    This process can also be called from the Similarity View from left sidebar by the button **Update Fingerprints**.

    .. figure:: images/maintenance_update_fingerprints.webp
        :alt:
        :align: center

        The digiKam Update Similarity Button from the Left Sidebar

While the rebuild fingerprints process is under progress, notification on the bottom right of main windows will be visible to indicate the amount of items already done.

.. figure:: images/maintenance_fingerprints_process.webp
    :alt:
    :align: center

    The digiKam Rebuild Fingerprints Process Running in the Background
