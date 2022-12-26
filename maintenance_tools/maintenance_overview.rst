.. meta::
   :description: Overview to digiKam Maintenance Tool
   :keywords: digiKam, documentation, user manual, photo management, open source, free, learn, easy

.. metadata-placeholder

   :authors: - Gilles Caulier <caulier dot gilles at gmail dot com>

   :license: Creative Commons License SA 4.0

.. _maintenance_overview:

Overview
========

.. contents::

Maintenance is a tool running processes in the background to maintain image collections and database contents. 

Depending on your workflow, your digiKam settings and whether you work on your images collection also with other programs it might be necessary to run maintenance operations from time to time to update the digiKam databases and also your images regarding duplicates, face tags, quality labels, etc. The maintenance tool can do that for you, even more than one operation in one go depending on your requirements.

.. figure:: images/maintenance_tool.webp

The list of tools is presented in a sequential order and cannot be changed. Only the tools to activate or desactivate during a maintenance session can be selected. The sequence of tools is relevant of the order to populate the information in database on the first time, and the way to use these information in a second time.

The tools available from the list are listed below:

   1. **Scan For New Items**: scan for albums and items to populate the database.
   
   2. **Perform Database Cleaning**: scan albums and items for unrelevant entries in database.
   
   3. **Rebuild Thumbnails**: scan albums to update the item thumbnails.
   
   4. **Rebuild Finger-prints**: scan albums to update item finger-prints used with Similarity searches.
   
   5. **Find Duplicate Items**: scan albums to update list of duplicates items based on Similarity finger-prints.
   
   6. **Detect and Recognize Faces**: perform an automatic faces management updates.
   
   7. **Image Quality Sorter**: perform an automatic scan of items to sort items by quality and apply Pick Labels in database.
   
   8. **Sync Metadata and Database**: perform synchronization of items metadata with database contents or vis-versa.
