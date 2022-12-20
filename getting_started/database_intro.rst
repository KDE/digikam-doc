.. meta::
   :description: How to quickly start digiKam photo manageent program
   :keywords: digiKam, documentation, user manual, photo management, open source, free, learn, easy

.. metadata-placeholder

   :authors: - Gilles Caulier <caulier dot gilles at gmail dot com>

   :license: Creative Commons License SA 4.0

.. _database_intro:

Database
========

Everyone knows about a database; it is used to store data. As all other photographs management programs, digiKam too uses the database for some obvious reasons like avoiding data duplication, reducing data redundancy, a quick search engine, and greater data integrity. Moreover, the cost of data entry, storage and retrieval are drastically reduced. Additionally, any user can access the data using query language.

Talking in particular about digiKam, the Albums, Album Roots, Tags, Thumbnails, Face Recognition Data, Image Metadata, File Paths, Settings etc. are all stored in different database files.

The digiKam actually manages more than one database. For convenience, it is broadly categorized in three:

    - Core database for all collection properties, i.e. it hosts all albums, images and searches data.

    - Thumbnails database for compressed thumbnails i.e. to host image thumbs using wavelets compression images (**PGF** format).

    - Similarity database to store image finger-prints for fuzzy search engine.

    - Face database for storing face recognition metadata i.e. to host face histograms for faces recognition. 

The whole details of database settings are mostly given in the :ref:`database setup section <database_settings>`.
