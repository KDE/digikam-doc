.. meta::
   :description: The digiKam Time Adjust
   :keywords: digiKam, documentation, user manual, photo management, open source, free, learn, easy, date, time, adjust

.. metadata-placeholder

   :authors: - digiKam Team

   :license: see Credits and License page for details (https://docs.digikam.org/en/credits_license.html)

.. _time_adjust:

:ref:`Time Adjust <post_processing>`
====================================

The Time Adjust tool available from :menuselection:`Item --> Adjust Time & Date` :kbd:`Ctrl+Shift+D` allows to adjust or write the timestamps in file metadata. This common task is sometime mandatory when your images do not contain dates in metadata (typically when the contents were digitized by a scanner), or when a camera records a wrong date in you file due to an incorrectly set clock. With this tool, you can choose the right source to take the date information, the date entries to fix or append, and the calculation to before on dates before saving them.

The **Timestamp Used** group allows you to select the source of the date. Available choices are:

    - **digiKam timestamp**: the date recorded in the database.
    - **File name timestamp**: the date extracted from the filename.
    - From the file system: **File last Modified** will use the last modification date of file.
    - From the metadata:
        - **Exif/IPTC/XMP**: parse Exif, IPTC, and XMP to get the first value available.
        - **EXIF: created**: image creation timestamp from Exif.
        - **EXIF: original**: image original timestamp from Exif.
        - **EXIF: digitized**: image digitized timestamp from Exif.
        - **IPTC: created**: image created timestamp from IPTC.
        - **XMP: created**: image created timestamp from XMP.
        - **EXIF: created (fuzzy)**: image creation timestamp from Exif and trying different encoding combinations in case of non-respect of standard.
        - **EXIF: original (fuzzy)**: image original timestamp from Exif and trying different encoding combinations in case of non-respect of standard.
        - **EXIF: digitized (fuzzy)**: image digitized timestamp from Exif and trying different encoding combinations in case of non-respect of standard.
    - A fixed user specified date.

The **Timestamp Adjustments** group allows you to select the operation to perform on the source date to obtain the target date. Available choices are:

    - **Copy value**: copy timestamp from source date to target date.
    - **Add**: add a fixed time offset to source date to compute target date. Use the settings on the right side to define the added value.
    - **Subtract**: subtract a fixed offset from the source date to compute target date. Use the settings on the right side to define the subtracted value.
    - **Interval**: interval timestamp to the next image from the list to process. Use the settings on the right side to define the interval value.

The **Determine difference from clock photo** allows you to select a photo to get a date from and calculate the time difference between it and the current item selected from the list of files to process. You can also use drag and drop over this button to define the selected image. This feature will automatically select the **Copy value**, **Add**, or **Subtract** method.

The **Timestamp updated** group allows you to define the target entries to update with the new values. Available choices are listed below:

    - **Update only existing timestamps**: will change only the values which already exist in file.
    - **Exif: original**: will change the image original timestamp from Exif.
    - **Exif: digitized**: will change the image digitized timestamp from Exif.
    - **Exif: created**: will change the image creation timestamp from Exif.
    - **Exif: Thumbnail**: will change the image thumbnail timestamp from Exif.
    - **XMP**: will change the image timestamp from standard XMP namespaces.
    - **XMP: video**: will change the image timestamp from WMP video namespace.
    - **IPTC: created**: will change the image created timestamp from IPTC.
    - **File last modified**: will change the last modified timestamp from file system.

.. figure:: images/time_adjust.webp
    :alt:
    :align: center

    The digiKam Time Adjust Tool Tuning Items Time-Stamp
