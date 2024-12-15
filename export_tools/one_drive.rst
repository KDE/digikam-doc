.. meta::
   :description: digiKam Export to OneDrive Web-Service
   :keywords: digiKam, documentation, user manual, photo management, open source, free, learn, easy, onedrive, export

.. metadata-placeholder

   :authors: - digiKam Team

   :license: see Credits and License page for details (https://docs.digikam.org/en/credits_license.html)

.. _one_drive:

:ref:`Export To OneDrive <export_tools>`
========================================

This tool allows the user to upload photos to the OneDrive web-service.

`OneDrive <https://en.wikipedia.org/wiki/OneDrive>`_ is a file hosting service. It enables registered users to share and synchronize their files.

The tool can be used to upload a selection of images from your collections to the remote OneDrive server using the Internet.

.. important::

    OneDrive file storage is currently limited to host only files with a size lower than 4Mb.

When accessing the tool for the first time from the :menuselection:`Export --> Export to OneDrive` :kbd:`Ctrl+Alt+Shift+O` menu entry, you are taken through the process of obtaining a token which is used for authentication purposes. The following dialog will popup and a browser window will be launched so you can log into OneDrive:

.. figure:: images/export_onedrive_login.webp
    :alt:
    :align: center

    The OneDrive Login Dialog

After successful sign-up, digiKam will be allowed to send photos to the OneDrive website.

Then, simply authorize the application and close the web browser. Returning to the host application dialog, you will see the interface used to upload photos to OneDrive.

.. figure:: images/export_onedrive_dialog.webp
    :alt:
    :align: center

    The OneDrive Export Tool Dialog

By default, the tool proposes to export the currently selected items from the icon-view. The **+** Photos button can be used to append more items on the list.

With the **Album** options, you can select the online folder to store files to upload. You can create a **New Album** or **Reload** the list in the combo-box if the online contents have changed in the OneDrive web interface.

If the **Resize photos before uploading** option is selected, the photos will be resized before transferring to OneDrive. The values will be read from the **JPEG quality** and **Maximum Dimension** settings, which can be used to adjust the maximum height and the compression. The width calculation will be done so as to maintain the aspect ratio.

.. figure:: images/export_onedrive_progress.webp
    :alt:
    :align: center

    The OneDrive Export Uploading in Progress

Press the **Start Upload** button to transfer items. You can click on the **Close** button to abort the uploading of photos.

Finally, you can view the uploaded photos by visiting the OneDrive website.

.. figure:: images/export_onedrive_stream.webp
    :alt:
    :align: center

    The OneDrive Online Account Displaying the Uploaded Contents
