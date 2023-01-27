.. meta::
   :description: The Showfoto Tools
   :keywords: digiKam, documentation, user manual, photo management, open source, free, learn, easy, image, editor, showfoto, tools

.. metadata-placeholder

   :authors: - digiKam Team

   :license: see Credits and License page for details (https://docs.digikam.org/en/credits_license.html)

.. _showfoto_tools:

Tools
=====

.. contents::

Overview
--------

Mostly, Showfoto provide the same tools from digiKam Image Editor, in native or available as plugins. All :ref:`Colors <colors_tools>`, :ref:`Effects <effects_tools>`, :ref:`Transform <transform_tools>`, :ref:`Decorate <decorate_tools>`, and :ref:`Enhancement <enhancement_tools>` tools are there. **Raw Import** tool is also integrated de facto in Showfoto to handle RAW demosaicing operations.

.. figure:: images/showfoto_apple_proraw.webp
    :alt:
    :align: center

    The Showfoto RAW Import Tool Processing a ProRAW File Taken with an Apple Iphone

Post-Processing
---------------

Even if Showfoto do not provides something like the **Batch Queue Manager** from digiKam, it's able process files in batch. Plugins as **Time Adjust**, **Print Wizzard**, **Metadata Editor**, **HTML Gallery**, etc. are compatible with Showfoto. The main difference to deal with this tools compared with digiKam is the way to pass items to process with the tools. Showfoto do not have an Icon-View as digiKam, but it's replace but the **Stack View** and the **Thumbbar**. When a :ref:`Post Processing <post_processing>` tool is called from Showfoto, the contents of the Stack or the Thumbbar is loaded in the tool. You can always tune this list later in the in plugins.

.. figure:: images/showfoto_time_adjust.webp
    :alt:
    :align: center

    The Showfoto Running Time Adjust Plugin Over the Contents loaded from the Current Stack

DNG Converter
-------------

One very important tool available in digiKam Batch Queue Manager is also usable in Showfoto. The famous :ref:`DNG Converter <dng_converter>` to migrate RAW container data to the standardized and open Digital Negative format.

This tool is available as stand-alone version like Time Adjust plugin. It work Mostly like the original one from the Batch Queue Manager. You can start it from the :menuselection:`Tools --> DNG Converter...` menu entry.

.. figure:: images/showfoto_dng_converter.webp
    :alt:
    :align: center

    The Showfoto Running DNG Converter Plugin
