.. meta::
   :description: Overview to digiKam Batch Queue Manager
   :keywords: digiKam, documentation, user manual, photo management, open source, free, learn, easy, batch, queue

.. metadata-placeholder

   :authors: - digiKam Team

   :license: see Credits and License page for details (https://docs.digikam.org/en/credits_license.html)

.. _batchqueue_overview:

Overview
========

.. contents::

digiKam features a batch queue manager in a separate window to easily process in batch items, aka filtering, converting, transforming, etc. It works with all supported image formats including RAW files.

Select one or several images in any view from the main window, call **Add to Current Queue** :kbd:`Ctrl+B` from the context menu. The selection will be added to the batch queue manager, and its separate window will open. When you are back to the digiKam main window you can quickly access the batch queue manager with :menuselection:`Tools --> Batch Queue Manager` :kbd:`B`.

On the top left side, the window shows the list of queues to process. Queues are a stack of items to batch using the same tools and the same settings. Each queue will be processed sequentially, but queue contents can be processed in parallel, depending of the settings. In this view, the list is ordered in flat showing item thumbnail, the original filename, and the target filename corresponding of the result.

On the top middle, this view shows the flat list of tools to apply on items queue. Each tool are apply step by step for the top to the bottom. You can arrange the order as you want. It's highly recommended to export to a new format at end of this list to be sure to preserve the best image quality.

On the top right side, this view shows the settings of the current tool selected on the top middle view. These settings will be saved in the queue and applied to all items to process in batch.

On the bottom left, the view shows all root settings for a queues, as the RAW processing, the file rename rules, the target place to store results, etc. The file renaming view is mostly the same than **Advanced Rename** tool available in **Main Window**. See the full description in :ref:`this section <renaming_photograph>` of this manual.

On the bottom right, the view shows the collection of tools available in batch queue manager. You can assign a tool to the current queue by a double click or a drag and drop. This view shows also a list of pre-recorded queue settings to allows to replay later workflow. Finally a tab show a flat list of batch operations processed on queue as a log-file.

.. figure:: images/bqm_main_view.webp
    :alt:
    :align: center

    The Batch Manager Window
