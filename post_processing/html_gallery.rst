.. meta::
   :description: The digiKam HTML Gallery
   :keywords: digiKam, documentation, user manual, photo management, open source, free, learn, easy, html, gallery

.. metadata-placeholder

   :authors: - digiKam Team

   :license: see Credits and License page for details (https://docs.digikam.org/en/credits_license.html)

.. _html_gallery:

HTML Gallery
============

.. contents::

The HTML Gallery is a tool for exporting a set of Albums or images to a HTML page.

.. figure:: images/html_gallery_page1.webp

This powerful tool can export your Albums into a HTML compliant web image gallery. You can easily select the Images or the Albums to export in an HTML page and set many designs and parameters for the HTML rendering. UTF-8 encoding is used for the best internationalization.

.. figure:: images/html_gallery_page2.webp

Launching the tool from within digiKam displays a view to select the contents to export: from current items selection, or from a list of albums. The Albums selection mode allows you to select items from Albums that you want to export to HTML. Just check the respective Albums displayed with hierarchical nesting. On the next tree tabs Tags, Searches, and Labels you can refine your selection using tags, labels, or previous search results in digiKam. 

.. figure:: images/html_gallery_page3.webp

Next step is to select a theme for the gallery from this dialog.

.. figure:: images/html_gallery_page4.webp

Depending on the chosen theme you may have additional options to fine-tune the appearance of the gallery.

The next screenshot shows the theme parameter setting for the Classic theme.

.. figure:: images/html_gallery_page5.webp

For all selected themes you can adjust the settings for the images and thumbnails in the gallery.

.. figure:: images/html_gallery_page6.webp

In the Full Image section you can either save modified images or Use original image.

For modified images you can select as output format JPEG (smallest filesize, but lossy) and PNG (lossless and free license) and set specific image compression features. If disk space is of concern check the target image compression and lower the compression level from the host application default value.

Checking the Max. size box you can fix the maximum target image size (in pixels) with the spinbox at the right. Images bigger than this value will be scaled down to it, but smaller images will not be modified.

.. note::

    If JPEG file format is selected for target resizing images, all Exif information will be preserved from the original JPEG files.

The Thumbnails section allows to set the Format, Quality and Size for the thumbnails in the gallery.

.. figure:: images/html_gallery_page7.webp

This page defines the settings of where and how to store the gallery with all its associated images. Select a folder or add a new folder with write access where you want the gallery to be written to. Two sub-folders with the name of your album folder and the theme name will be created containing everything.

A progress dialog giving a feedback indicate to user. Press Cancel button during this stage if you want abort the process.

.. figure:: images/html_gallery_page8.webp

Finaly, the HTML gallery generated is displayed in a browser.
