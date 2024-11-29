.. meta::
   :description: digiKam Batch Queue Manager Queue Settings
   :keywords: digiKam, documentation, user manual, photo management, open source, free, learn, easy, batch, queue, manager, settings

.. metadata-placeholder

   :authors: - digiKam Team

   :license: see Credits and License page for details (https://docs.digikam.org/en/credits_license.html)

.. _queue_settings:

Queue Settings
==============

.. contents::

The **Queue Settings** area in the bottom left of the Batch Queue Manager is used to adjust the settings for each queue. The settings in this area are organized into five tabs. The Batch Queue Manager supports the definition of multiple queues, which are shown as tabs in the **Queues** list, and each queue can have its own settings. The Queue Settings display updates when you switch from one queue to another by clicking on a queue tab in the **Queues** list.

.. note::

    With the Workflow feature, you can store your preferred queue settings for later use. See :ref:`this section <bqm_workflow>` of the manual for details.

Target
------

This tab allows you to select the album where the target or result files will be stored. Two choices are supported: the same album where the original files are stored, or another album. The search field on the bottom allows you to filter the album tree-view, a handy feature if you have a huge collection.

.. figure:: images/bqm_queue_settings_target.webp
    :alt:
    :align: center

    The Batch Queue Manager Queue Settings View to Customize Target Album to Store Processed Items

File Renaming
-------------

This tab allows you to customize the file renaming rules. The **Original** and **Target** file names list in the **Queues** view provides examples of how the target files will be renamed.

The settings for file renaming are exactly the same as in the **Advanced Rename** tool available from **Main Window**. See :ref:`this section <renaming_photograph>` from the manual for details.

.. figure:: images/bqm_queue_settings_rename.webp
    :alt:
    :align: center

    The Batch Queue Manager Queue Settings View to Customize the File Rename Rules

Behavior
--------

This tab allows you to customize certain behaviors that control queue processing.

The **RAW Files Loading** setting configures how any RAW files will be processed: select **RAW Decoding** to process with standard demosaicing (see below), or select **Embedded Preview** to process with an embedded preview. This last option is very fast compared to RAW decoding.

The **Target File Exists** setting allows you to customize the behavior when the target file already exists. You can **Store as a different name**, **Overwrite automatically** to overwrite the target file, or **Skip automatically** to skip overwriting the target file. No matter what option is selected, the Batch Queue Manager will not ask you about this behavior while running.

The **Save Image as a Newly Created Branch** setting will use **Image Versioning** to name target files. This is the same behavior as when files are exported from **Image Editor** when Versioning feature is enabled.

The **Work on all Processor Cores** setting will use more than one core to process items in parallel from the same queue.

.. figure:: images/bqm_queue_settings_behavior.webp
    :alt:
    :align: center

    The Batch Queue Manager Queue Settings View to Customize the Behavior

RAW Decoding
------------

This tab allows you to customize the RAW Import settings for the Batch Queue Manager. Typically these settings are used when a RAW files is present in a Queue. RAW files need to be decoded and loaded into memory in a RGB color space before batch processing the file. This setting is only used if **Behavior/RAW Files Loading** is set to **RAW Decoding**.

The **RAW Import** section of :ref:`the Image Editor configuration <setup_rawdefault>` provides a detailed description of these settings.

.. figure:: images/bqm_queue_settings_raw.webp
    :alt:
    :align: center

    The Batch Queue Manager Queue Settings View to Customize the RAW Decoding

Saving Images
-------------

This tab allows you to customize the settings used while saving the image. It is not uncommon for a queue to process files without exporting the results into another format. An example would be loading **JPEG** files, applying **White Balance** and **Resize** tools, and then storing the results as **JPEG** files. When you want to save the results of batch processing into a file type different than the original, you need to apply a convert tool at end of your workflow. In either case, these Tool Settings are used to control the export process.

All the details of these settings is described in **Save Images** section from :ref:`the Image Editor configuration <saveimage_settings>`.

.. figure:: images/bqm_queue_settings_save.webp
    :alt:
    :align: center

    The Batch Queue Manager Queue Settings View to Customize the File Saving

