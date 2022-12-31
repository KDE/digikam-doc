.. meta::
   :description: The digiKam Print Creator 
   :keywords: digiKam, documentation, user manual, photo management, open source, free, learn, easy, print

.. metadata-placeholder

   :authors: - digiKam Team

   :license: see Credits and License page for details (https://docs.digikam.org/en/credits_license.html)

.. _print_creator:

Print Creator
=============

.. contents::

The print creator is a tool to print a set of images at the same time.

This tool allows multiple images to be combined into single sheets of paper in standard photo sizes for printing. The combined images can also be automatically opened with the image editor Gimp for enhancement or for direct printing using the Gimp-Print tool. The combined images can also be output directly to PDF file or an image.

The first page allows to use the items selection method: from images currently selected in digiKam, or from albums collections. This page also verify the availability of Gimp binary program.

.. figure:: images/print_creator_page1.webp

The next page allows to customize the printing layout, the list of items to assemble, and the printing target as:

    - Post processing with **Gimp**.
    - PDF file.
    - Image file.

A layout preview using selected items is given on the left bottom side of the dialog.

.. figure:: images/print_creator_page2.webp

The next page allows to customize the caption for each items, as:

    - **No caption**.
    - **Image file name**.
    - **Exif date-time** from file metadata.
    - **Item comments** from file metadata.
    - A **Custom Format** constructed by a list of fields assembly as a string.

The caption **Text Color**, **Text Size**, and **Font Family** can be customized if necessary.

.. figure:: images/print_creator_page3.webp

The next page allows to crop and rotate each items at the desired area before printing. You can review all items one by one before to start the print processing.

.. figure:: images/print_creator_page4.webp

The last page list all necessary tasks to render printing. If you select an image or a PDF file as target, a supplemental dialog will appear to customize the last options used by the print driver, and especially the place where the file must be generated.

.. figure:: images/print_creator_page5.webp
