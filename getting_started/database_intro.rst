.. meta::
   :description: How to quickly start digiKam photo management program
   :keywords: digiKam, documentation, user manual, photo management, open source, free, learn, easy, database, intro

.. metadata-placeholder

   :authors: - digiKam Team

   :license: see Credits and License page for details (https://docs.digikam.org/en/credits_license.html)

.. _database_intro:

Database
========

Overview
--------

Databases are used to store data. Like other photograph management programs, digiKam uses its database to avoid data duplication, reduce data redundancy, enable fast search, and guarantee data integrity. Using a database also drastically reduces the cost of data entry, storage and retrieval. Additionally, any user can access the data using a query language.

digiKam stores data (including albums, album roots, tags, thumbnails, face recognition data, image metadata, file paths, settings and others) in four databases:

    - Core database for all collection properties: hosts all albums, images and search data.

    - Thumbnail database for compressed thumbnails: hosts image thumbs using wavelet compressed images (**PGF** format).

    - Similarity database for image fingerprints to enable fuzzy search.

    - Face database for storing face recognition metadata: hosts face histograms for face recognition.

.. figure:: images/database_remote_mysql_config.webp
    :alt:
    :align: center

    Example of digiKam remote MySQL configuration hosted on a NAS from the local network

Details on database settings can be found in the :ref:`Database Setup section <database_settings>`.

Migrating From Other Software
-----------------------------

The digiKam database can be populated from file properties managed by another program by using the other program to write all metadata into XMP sidecar files. While digiKam cannot parse proprietary and closed source databases, it can read XMP sidecar files, which is a standardized and well-documented file format.

Read the :ref:`Metadata Setup section <metadata_settings>` to use XMP sidecar files with digiKam. The Advanced panel offers profile management to handle special cases while importing and exporting metadata to and from 3rd-party software.

In a fresh installation of digiKam, you can create a new root collection in the directory where you store images managed by the other software. The contents will be parsed and the database will be populated with the information found in the XMP sidecar files.

After the items are read (this can take a while), you will be able to see all tags, labels and comments in the digiKam item properties.

.. note:

    It's recommended to start with a test on a small collection, and to process step by step by adjusting the settings if necessary.
