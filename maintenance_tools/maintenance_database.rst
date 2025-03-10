.. meta::
   :description: digiKam Maintenance Tool Database Cleaning
   :keywords: digiKam, documentation, user manual, photo management, open source, free, learn, easy, maintenance, database, cleanup, Shrink

.. metadata-placeholder

   :authors: - digiKam Team

   :license: see Credits and License page for details (https://docs.digikam.org/en/credits_license.html)

.. _maintenance_database:

:ref:`Database Cleaning <maintenance_tools>`
============================================

.. figure:: images/maintenance_database_cleaning.webp
    :alt:
    :align: center

    The digiKam Maintenance Database Options

The **Database Cleaning** tool analyzes your database files looking for entries to delete that have no matching files or folders. When this tool is run, the Core database is always cleaned. You can select additional databases for cleaning by selecting one of the extra options listed below:

    - **Cleanup the Thumbnails database**.

    - **Cleanup the Faces database**.

    - **Cleanup the Similarity database**.

    - **Shrink all databases** to ensure de-fragmentation, keeping the database as small as possible.

.. index::
    single: SQLite
    single: MySQL

.. note::

   The last option leads to the vacuuming (shrinking) of the databases. Vacuuming is supported for both SQLite and MySQL. Database shrinking may take some time. In order to avoid database corruption during this operation, digiKam will display the following non modal dialog, and stop responding to user commands until the shrinking operation is complete.

.. figure:: images/maintenance_database_process.webp
    :alt:
    :align: center

    The digiKam Database process Working in the Background.

.. important::

    A database always grows when new elements are added, even if others are deleted beforehand. The deleted entries are only marked as deleted for performance reasons.
