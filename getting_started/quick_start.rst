.. meta::
   :description: How to quickly start digiKam photo manageent program
   :keywords: digiKam, documentation, user manual, photo management, open source, free, learn, easy

.. metadata-placeholder

   :authors: - digiKam Team (see Credits and License for details)

   :license: Creative Commons License SA 4.0

.. _quick_start:

Quick Start
===========

.. figure:: images/firstrun_step1.webp

When you start digiKam for the very first time it will ask you where you store your photographs. You can choose any local, remote or removable folder. Just type in the path name of a folder or click on the **Browse...** icon to select a folder from the dialog.

Later on you can add as many locations as you like - digiKam will add them to the album library. Look menu entry :menuselection:`Settings --> Configure digiKam --> Collections` 

.. figure:: images/firstrun_step2.webp

Then you have to specify a local folder that resides on your computer, in which the database will be stored. This path will be the same for all image folders. For details about the database type selection have a look at :ref:`the digiKam Database <database_intro>`. If you have a local installation and a collection of less than 100.000 photographs you may well keep the default setting (SQLite).

.. figure:: images/firstrun_step3.webp

Next, you will have to choose the way you would like to open RAW files : either with automatic adjustments or with the digiKam RAW import tool to adjust corrections manually.
If you don't know what is a RAW file or if your camera doesn't support RAW files, you should keep the default setting and skip this step.

.. figure:: images/firstrun_step4.webp

Metadata information storage may be important if you plan to work with another photo management program and you should choose **Add information to files**. But if you don't want to alter your pictures, keep the default setting: **Do nothing**.

.. figure:: images/firstrun_step5.webp

Then choose how digiKam will load images in preview mode and light table. Reduced version will load faster but at the cost of quality.

.. figure:: images/firstrun_step6.webp

Now decide how digiKam will open images with a click of the right mouse button. Previews will load faster but you won't be able to make any corrections.

.. figure:: images/firstrun_step7.webp

Tooltips are a fast and easy way to display important information about a photograph, they popup as the mouse hovers over a thumbnail. Select **Use tooltip** if you want to display them.

.. figure:: images/firstrun_step8.webp

Click on **Finish**, digiKam will now start to scan for photographs...

.. figure:: images/firstrun_step9.webp

Nothing really to select here. You can cancel or start the scan with **Finish**. None of the photographs will be altered. During folders parsing you can see a progress bar in the lower right corner like this:

.. figure:: images/scan_progress.webp

.. note::

    digiKam will recurse the library path to its full depth. You cannot exclude (prune) any sub-path unless you make that sub-path hidden. You have to do that from outside of digiKam by putting a dot in front of the sub-path.

As digiKam uses your folders on your hard disk directly, other applications like file managers can remove any albums outside a digiKam session. In this case digiKam will ask you at the next session whether all albums that have been removed from the digiKam photographs root path shall be deleted from albums database. If you want to move folders around and don't want to do that in digiKam, we suggest you do that while digiKam is running, so the database will be kept in sync and you do not lose any metadata.

When you use an existing folder of photographs as the Album Library folder, you will notice that the Albums in the Album list do not have photographs as their icons. You can change that by dragging any photograph in the Album onto the folder icon in the left sidebar and use this as the Album icon. See :ref:`the Album section <albums_view>` for details of how to change the Album icon.

digiKam uses a dedicated database to store thumbnails with an optimized wavelets compression algorithm (PGF). There is no way of hiding non-standard thumbnail folders from the **Albums** list. If you want to keep them you could create an Album Category that just contains all the thumbnail Folders and then view your Albums in :menuselection:`View --> Sort Albums --> By Category` order. See :ref:`the Album section <albums_view>` for more about Album Categories.

Once you have configured the Album Library Folder you can set up digiKam to work with your digital camera and then learn how to use :ref:`the Album section <albums_view>` and :ref:`the Tags section <tags_view>` to arrange your photograph Albums.

.. important::

    At first run, digiKam will ask to download large files from Internet. These files are the deep-learning models used for the face managament, red eyes removal, and the image quality sorting features. If you pass this stage without downloading files, these features will not work properly.

    .. figure:: images/models_downloader.webp
