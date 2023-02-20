.. meta::
   :description: digiKam Export to Box Web-Service
   :keywords: digiKam, documentation, user manual, photo management, open source, free, learn, easy, box, export

.. metadata-placeholder

   :authors: - digiKam Team

   :license: see Credits and License page for details (https://docs.digikam.org/en/credits_license.html)

.. _box_export:

Export To Box
=============

.. contents::

This tool allows the user to upload photos to the Dropbox web-service.

`Dropbox <https://en.wikipedia.org/wiki/Pinterest>`_ is a file hosting service that offers cloud storage, file synchronization, personal cloud, and client software..

The tool can be used to upload a selection of images from your collection to the remote Dropbox server using the Internet.

When accessing the tool for the first time by the :menuselection:`Export --> Export to Dropbox` :kbd:`Ctrl+Alt+Shift+D` menu entry, you are taken through the process of obtaining a token which is used for authentication purposes. The following dialog will popup and a browser window will be launched you will log in to Dropbox:

.. figure:: images/export_dropbox_login.webp
    :alt:
    :align: center

    The Dropbox Login Dialog

After successful sign-up digiKam will be allowed to send photos to the Dropbox website. You will be presented with the following page:


.. figure:: images/export_dropbox_authorize.webp
    :alt:
    :align: center

    The Dropbox Authorize Dialog

Then, simply authorize application and close the web browser. Return to the host application dialog, you will see the interface used to upload photos to Dropbox.

.. figure:: images/export_dropbox_dialog.webp
    :alt:
    :align: center

    The Dropbox Export Tool Dialog

By default, the tool proposes to export the currently selected items from the icon-view. The **+** Photos button can be used to append more items on the list.

With the **Album** options, you can select the online folder to store files to upload. You can **Create** new one and **Reload** the list on the combo-box if online contents have been changed in Dropbox web interface.

If the **Resize photos before uploading** option is selected, the photos will be resized before transferring to Dropbox. The values will be read from the **JPEG quality** and **Maximum Dimension** settings, which can be used to adjust the maximum height and the compression. The width calculation will be done so as to have the aspect ratio conserved. With the **Upload original image file** option, the photo are transferred without modification.

.. figure:: images/export_dropbox_progress.webp
    :alt:
    :align: center

    The Dropbox Export Uploading in Progress

Press **Start Upload** button to transfer items. You can click on the **Close** button to abort the uploading of photos.

Finally, you can view the uploaded photos by visiting the Dropbox website.

.. figure:: images/export_dropbox_stream.webp
    :alt:
    :align: center

    The Dropbox Online Account Displaying the Uploaded Contents
