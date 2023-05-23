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

On the left side of the dialog, the tool settings allows to customize all parameters used to generate the mosaic. If the preselected photo from your collection is not the one that you want to render as a mosaic, you can change it using the **Load Base Image** button. The size in pixels of the base image is indicated just behind.

The next button **Set Image Folder** allows to set the directory where are stored the images to host on the matrix. The tool will parse the contents later in the process to generate the mosaic by analysis all photos from this directory and apply each one on the matrix. Images will reduced and placed over the base image using a smart comparison of the shape of the resized version and the base image shape of the part to cover. When analysis is complete, the tool will indicate the number of file parsed on the folder and used to fill the matrix.

The **Variation** setting allow to customize the redundancy level of the reduced images placed over the matrix. Possible values are **disabled**, **very low**, **low**, **medium**, **high**, and **very high**.

The **Output Resolution** setting allow to customize the width and height in pixels of the target image covered by the matrix. The lock icon between the width and height value allows to set preserve the aspect ratio compared by the base image resolution. To validate changes on the values, press the **Set Resolution** button.

The **Grid** setting allows to customize the numbers of **rows** and **columns** of the matrix. With large values, more items from the image folder will be necessary to cover the mosaic with different thumbnails.

When all is ready to process, press the **Create Mosaic** button. Depending of the settings, this can take a while to complete, but the mosaic construction can be seen step by step over the canvas. Finally, press the **Save** button to record the target image on your disk.

.. figure:: images/mosaic_wall_rendering.webp
    :alt:
    :align: center

    The Mosaic-Wall Tool Rendering a Target Image with a Matrix of Photos.
