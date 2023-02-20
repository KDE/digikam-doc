.. meta::
   :description: digiKam Export to Pinterest Web-Service
   :keywords: digiKam, documentation, user manual, photo management, open source, free, learn, easy, pinterest, export

.. metadata-placeholder

   :authors: - digiKam Team

   :license: see Credits and License page for details (https://docs.digikam.org/en/credits_license.html)

.. _pinterest_export:

Export To Pinterest
===================

.. contents::

This tool allows the user to upload photos to the Pinterest social network.

`Pinterest <https://en.wikipedia.org/wiki/Pinterest>`_ is an image sharing and social media service designed to enable saving and discovery of information on the internet using images, and on a smaller scale, animated images and videos, in the form of pin-boards.

The tool can be used to upload and tweet a selection of images from your collections to the remote Pinterest server using the Internet.

When accessing the tool for the first time by the :menuselection:`Export --> Export to Pinterest` :kbd:`Ctrl+Alt+Shift+I` menu entry, you are taken through the process of obtaining a token which is used for authentication purposes. The following dialog will popup and a browser window will be launched you will log in to Pinterest:

.. figure:: images/export_pinterest_login.webp
    :alt:
    :align: center

    The Pinterest Login Dialog

After successful sign-up digiKam will be allowed to send photos to the Pinterest website. You will be presented with the following page:


.. figure:: images/export_pinterest_authorize.webp
    :alt:
    :align: center

    The Pinterest Authorize Dialog

Then, simply authorize application and close the web browser. Return to the host application dialog, you will see the interface used to upload photos to Pinterest.

.. figure:: images/export_pinterest_dialog.webp
    :alt:
    :align: center

    The Pinterest Export Tool Dialog

By default, the tool proposes to export the currently selected items from the icon-view. The **+** Photos button can be used to append more items on the list.

With the **Album** options, you can select the online folder to store files to upload. You can **Create** new one and **Reload** the list on the combo-box if online contents have been changed in Pinterest web interface.

If the **Resize photos before uploading** option is selected, the photos will be resized before transferring to Pinterest. The values will be read from the **JPEG quality** and **Maximum Dimension** settings, which can be used to adjust the maximum height and the compression. The width calculation will be done so as to have the aspect ratio conserved.

.. figure:: images/export_pinterest_progress.webp
    :alt:
    :align: center

    The Pinterest Export Uploading in Progress

Press **Start Upload** button to transfer items. You can click on the **Close** button to abort the uploading of photos.

Finally, you can view the uploaded photos by visiting the Pinterest website.

.. figure:: images/export_pinterest_stream.webp
    :alt:
    :align: center

    The Pinterest Online Account Displaying the Uploaded Contents
