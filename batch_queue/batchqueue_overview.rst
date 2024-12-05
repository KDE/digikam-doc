.. meta::
   :description: Overview to digiKam Batch Queue Manager
   :keywords: digiKam, documentation, user manual, photo management, open source, free, learn, easy, batch, queue

.. metadata-placeholder

   :authors: - digiKam Team

   :license: see Credits and License page for details (https://docs.digikam.org/en/credits_license.html)

.. _batchqueue_overview:

:ref:`Overview <batch_queue>`
=============================

digiKam features a batch queue manager that opens in a separate window to easily batch process a list of items, aka filtering, converting, transforming, etc. Batch processing works with all supported image formats including RAW files.

To select images for batch processing, select one or several images in any view from the main window, then select **Add to Current Queue** :kbd:`Ctrl+B` from the context menu. The selection will be added to the batch queue, and a separate Batch Queue Manager window will open. You can also quickly open the Batch Queue Manager window from the digiKam **Main Window** by selecting :menuselection:`Tools --> Batch Queue Manager` :kbd:`B`, or by clicking **Batch Queue Manager** in the main toolbar.

.. figure:: images/bqm_main_view.webp
    :alt:
    :align: center

    The Batch Queue Manager Window

The Batch Queue Manager window displays the list of **Queues** to process on the top left. Queues are a stack of items to batch process, applying the same tools with the same settings to each image in the queue. Each queue is processed sequentially, but queue contents can be processed in parallel, depending on the Queue Settings. The Queue list shows queues as tabs, with each tab listing the items in that queue as an ordered table displaying the item thumbnail, the original filename, and the target filename indicating where the result should be stored.

.. tip::

    If you want to process the items from an album and all sub-albums in a queue, just turn on the option to display sub-albums in the Album-View using the :menuselection:`View --> Include Album-Sub Tree` menu entry, select the corresponding items, and then add them to the Batch Queue Manager.

The list of **Assigned Tools** to apply to each item in the queue is shown in the top middle of the window. Each tool in this list is applied sequentially from top to bottom. You can drag tools within this list to rearrange the order as needed. It's highly recommended that you export to a new format at the end of this list in order to preserve the best image quality.

To adjust the settings for a tool, select the tool from the Assigned Tools list. The settings for that tool are then displayed in the **Tool Settings** area in the top right of the window. Any changes to these settings will be saved in the queue and applied to all items during batch processing.

The **Queue Settings** in the bottom left of the window shows all of the root settings for the selected queue. These include where to save the target files, file renaming rules, general behaviors for file handling, settings for processing RAW files, and image settings for the target files. The file renaming view is mostly the same as for the **Advanced Rename** tool available in **Main Window**. See the full description in :ref:`this section <renaming_photograph>` of this manual.

The **Control Panel** in the bottom right of the window shows the collection of tools available in the batch queue manager. You can assign a tool to the current queue by a double clicking or a drag and drop. This view also shows a list of pre-recorded queue settings that allows you to later replay a previous workflow. Finally the History tab shows a log-file of previous batch operations.

.. figure:: videos/bqm_tools_assignment.webp
    :width: 500px
    :alt:
    :align: center

    Screencast of Batch Queue Manager Tools Assignment to a Queue

