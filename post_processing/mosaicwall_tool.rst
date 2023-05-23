.. meta::
   :description: The digiKam Mosaic Wall Tool
   :keywords: digiKam, documentation, user manual, photo management, open source, free, learn, easy, mosaic, wall

.. metadata-placeholder

   :authors: - digiKam Team

   :license: see Credits and License page for details (https://docs.digikam.org/en/credits_license.html)

.. _mosaicwall_tool:

Mosaic-Wall Tool
================

.. contents::

`Mosaic-Wall <https://github.com/scheckmedia/ImageMosaicWall>`_ allows creating an image based on a bunch of other images. It looks like a mosaic effect. This tool is not included in the digiKam source code. Rather, it is a 3rd-party plugin included in binary distributions of digiKam, as the Windows, macOS, and Linux bundles.

First, you need to select one item from your collection to render as a matrix of photo. To start the Mosaic-Wall tool, head to the **Tools** tab from the **Right Side-bar**. You will find the **Image Mosaic Wall** icon on the list. You can also start it from the :menuselection:`Tools --> Image Mosaic Wall` menu entry. The tool dialog will open as follows: 

.. figure:: images/mosaic_wall_dialog.webp
    :alt:
    :align: center

    The Mosaic-Wall Tool Dialog

On the right side of the dialog the previously selected image must be render on the canvas with the matrix overlay. The buttons available on the bottom-right corner allows to adjust the canvas zoom level to show the details on the rendered mosaic.

On the left side of the dialog, the tool settings allows to customize all parameters used to generate the mosaic. If the preselected photo from your collection is not the one that you want to render as a mosaic, you can change it using the **Load Base Image** button.

The next button **Set Image Folder** allows to set the directory where are stored the images to host on the matrix. The tool will parse the contents later in the process to generate the mosaic by analysis all photos from this directory and apply each one on the matrix.
