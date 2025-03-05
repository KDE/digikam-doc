.. meta::
   :description: digiKam Batch Queue Manager Metadata Tools
   :keywords: digiKam, documentation, user manual, photo management, open source, free, learn, easy, batch, metadata, pick, labels, rating, color, comment, caption, title

.. metadata-placeholder

   :authors: - digiKam Team

   :license: see Credits and License page for details (https://docs.digikam.org/en/credits_license.html)

.. _metadata_tools:

:ref:`Metadata Tools <batch_queue>`
===================================

.. contents::

The Batch Manager metadata tools are used to assist with :ref:`Digital Asset Management <asset_management>` by managing metadata values in items within a Queue, by helping to classify contents in your collection, or by preparing files for sharing with other applications.

.. _bqm_qualityscan:

Image Quality Scan
------------------

This tool assesses your items to automatically assign a **Pick Label** based on the aesthetic value of the contents. You can use the fully automated quality assessment based on a deep-learning engine (recommended), or use manual settings for a fixed set of criteria including Blur, Noise, Exposure, and Compression. These settings are fully explained in the :ref:`Image Quality Scanning Settings <label_imagescan>` topic in the **Labels View** section of this manual.

.. figure:: images/bqm_metadata_quality.webp
    :alt:
    :align: center

    The Batch Queue Manager Tool to Sort Items by Image Quality

.. _bqm_assigntemplate:

Apply Metadata Template
-----------------------

This tool applies a metadata template to your items in order to set copyright and descriptive information about the contents. The **Template** drop-down field lets you choose one of the metadata templates that can be customized in :ref:`Templates Settings <templates_settings>`. You can also access the **Template Manager** with the edit button to the right of the drop-down field.

.. figure:: images/bqm_metadata_template.webp
    :alt:
    :align: center

    The Batch Queue Manager Tool to Apply Metadata Template

.. _bqm_translatemetadata:

Translate Metadata
------------------

This tool automatically translates some key metadata into alternative language strings using an online translator service. Translatable entries are:

    - :ref:`Title <captions_comments>`
    - :ref:`Captions <captions_comments>`
    - :ref:`Copyrights <authorship_copyright>`
    - :ref:`Usage Terms <authorship_copyright>`

The translations settings can be modified from the dedicated :ref:`Localize Settings Panel <localize_settings>`. Translation settings include a list of additional languages that can be used. To add a new language to the list, use the drop-down button on the left of **Translate to** option. To remove a language, use the context menu for any item in the list.

.. figure:: images/bqm_metadata_translate.webp
    :alt:
    :align: center

    The Batch Queue Manager Tool to Translate Strings in Metadata

.. _bqm_assigncaptions:

Assign Captions
---------------

This tool assigns **Title**, **Captions**, and **Author** properties to items from a Queue. For details about these properties, take a look at the :ref:`Captions View <captions_view>` section of this manual.

.. figure:: images/bqm_metadata_captions.webp
    :alt:
    :align: center

    The Batch Queue Manager Tool to Assign Captions to Items

.. _bqm_assignlabels:

Assign Labels
-------------

This tool assigns **Pick Label**, **Rating**, and **Color Label** to items from a Queue. Unlike the **Quality Sort** tool which applies a Pick Label automatically, this tool will set the Pick Label value manually. For details about these properties, take a look at the :ref:`Captions View <captions_view>` section of this manual.

.. figure:: images/bqm_metadata_labels.webp
    :alt:
    :align: center

    The Batch Queue Manager Tool to Assign Labels to Items

.. _bqm_removemetadata:

Remove Metadata
---------------

This tool deletes selected portions of **Exif**, **IPTC**, and **XMP** metadata from files in the Queue. You can select specific categories of metadata to remove from the **Exif**, **IPTC**, and **XMP** drop-down menus:

    - Exif:
        - **Completely**: remove all Exif entries.
        - **Date**: remove the time-stamp.
        - **GPS**: remove geolocation information.
        - **XPKeywords**: remove the Windows keywords
        - **Comments and Descriptions**: remove all captions entries.

    - IPTC:
        - **Completely**: remove all IPTC entries.
        - **Date**: remove the time-stamp.
        - **Caption**: remove the content descriptions.

    - XMP:
        - **Completely**: remove all XMP entries.
        - **Date**: remove the time-stamp.
        - **DigiKam**: remove all information from the application namespace.
        - **DigiKam image history**: remove only the versioning data from the application namespace.
        - **Dublin Core**: remove only the entries from the Dublin Core namespace.
        - **Exif**: remove only the translated Exif information stored in the dedicated namespace.
        - **Video**: remove only the entries from the Video namespace.
        - **Caption, comment and description**: remove all entries describing the contents.

.. figure:: images/bqm_metadata_remove.webp
    :alt:
    :align: center

    The Batch Queue Manager Tool to Remove Metadata from Items

.. _bqm_timeadjust:

Time Adjust
-----------

This tool adjusts the time-stamp entries in file metadata. It use the same settings as the :ref:`stand alone version <time_adjust>` of this plugin available from :menuselection:`Item --> Adjust Date & Time` in the **Main Window** menubar.

.. figure:: images/bqm_metadata_timeadjust.webp
    :alt:
    :align: center

    The Batch Queue Manager Tool to Adjust Items' Time-Stamp
