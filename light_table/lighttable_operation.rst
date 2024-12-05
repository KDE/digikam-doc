.. meta::
   :description: Overview to digiKam Light Table Operation
   :keywords: digiKam, documentation, user manual, photo management, open source, free, learn, easy, light table, synchronize, by-pair, compare, preview, canvas

.. metadata-placeholder

   :authors: - digiKam Team

   :license: see Credits and License page for details (https://docs.digikam.org/en/credits_license.html)

.. _lighttable_operation:

:ref:`Working With The Stack Contents <light_table>`
====================================================

.. contents::

The operation of Light Table is affected by two modes: Synchronized and By Pair.

Synchronized Mode
-----------------

With the By Pair mode turned off, any two images can be compared by dragging the first image from the thumb bar to the left comparison pane, and then the second image to the right comparison pane. A little arrow will indicate which copy is shown in which pane. The current selected pane will be highlighted by a frame. If the two images have the same aspect ratio and you choose **Synchronize** from the toolbar, any zoom and panning in one window will be synchronously executed in the other pane. This allows you to easily compare the same areas in the two images.

.. figure:: videos/light_table_views_synchronized.webp
    :width: 600px
    :alt:
    :align: center

    Screencast of the digiKam Light Table Using the **Synchronize** Mode with Side by Side Views

By Pair Mode
------------

.. |scroll| image:: images/light_table_icon_scroll.webp
    :height: 20px

The By Pair mode is better suited for quickly culling from a series of images. If you choose **By Pair** from the toolbar, the two sequential images from the thumbbar will be automatically inserted into the comparison panes. Click on any thumbnail to make it the left side preview, the adjacent thumbnail to the right will be inserted into the right pane. That makes it easy to sift through a series of similar images. And this sifting can be done with or without the Synchronized mode.

.. figure:: videos/light_table_views_bypair.webp
    :width: 600px
    :alt:
    :align: center

    Screencast of the digiKam Light Table Using the **By-Pair** Mode with Side by Side Views

Of course, the usual edit actions work directly from the light table -  :menuselection:`File --> Edit...` :kbd:`F4` opens the currently selected image in **Image Editor**.

All image information from the main window's right sidebar is available for each of the two previews in the Light Table. The Light Table **Left Sidebar** is dedicated to the image in the **Left Pane**, and the **Right Sidebar** to the image in the **Right Pane**. This makes it easy to link visual differences to exposure data.

In the lower right corner of each pane you will find a built-in panning control |scroll|. Click on it and keep the left mouse button pressed to pan across the image. Both images will scroll with **Synchronize** mode selected.

Zooming works the same as in other views: use the zoom slider below the panes or **Ctrl-scroll wheel** to zoom in and out. Both images will zoom when **Synchronize** mode is selected.

.. tip::

    If you use multiple screens on your computer, you may find it's a good idea to place **Main Window** on one screen and the **Light Table** on another screen.

.. note::

    Light Table has its own configuration page accessible from the digiKam setup dialog. For more details, read :ref:`this section <lighttable_settings>` of the manual.
