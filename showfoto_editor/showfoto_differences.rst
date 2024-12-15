.. meta::
   :description: Differences of Showfoto and Image Editor
   :keywords: digiKam, documentation, user manual, photo management, open source, free, learn, easy, image, editor, showfoto

.. metadata-placeholder

   :authors: - digiKam Team

   :license: see Credits and License page for details (https://docs.digikam.org/en/credits_license.html)

.. _showfoto_differences:

:ref:`Differences with Image Editor <showfoto_editor>`
======================================================

One main difference between Showfoto and the digiKam Image Editor is the lack of support for any database. Showfoto deals directly with the file-metadata for all loaded files. Since Showfoto is just an editor that does not support all the capabilities of a photo management program, such as a powerful search tool, it's not necessary to cache file information in a database.

.. important::

    As Showfoto does not use a database, the application lacks **image versioning** support.

Other differences with the digiKam Image Editor is the **Left Sidebar**. In Showfoto all photo management is delegated to the Main Window and the left sidebar hosts two tabs to navigate through your file system:

    - The :ref:`Folders <showfoto_folderstab>` tab allows you to navigate through directory hierarchies like a standard file manager. You can see the image thumbnails and the current path. Clicking on a thumbnail will load the contents to the canvas.

    - The :ref:`Stack <showfoto_stacktab>` tab hosts your preferred items previously selected in the **Folders** tab.

The **Right Sidebar** is exactly the same as in the Image Editor, except for the tabs that depend exclusively on the database - **Captions** and **Versions** are not available in Showfoto. Look in :ref:`this section <right_sidebar>` of this manual to find information about the tabs presented in Showfoto.

Another difference with the digiKam Image Editor are two new entries in the **File** menu:

    - **Open**: can load files into the canvas. A standard open file dialog allows you to choose the items from the disk.

    - **Open folder**: can specify the folder to parse all items to load into the canvas.
