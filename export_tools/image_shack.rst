.. meta::
   :description: digiKam Export to ImageShack Web-Service
   :keywords: digiKam, documentation, user manual, photo management, open source, free, learn, easy, imageshack, export

.. metadata-placeholder

   :authors: - digiKam Team

   :license: see Credits and License page for details (https://docs.digikam.org/en/credits_license.html)

.. _image_shack:

:ref:`Export To ImageShack <export_tools>`
==========================================

This tool allows the user to upload photos to the ImageShack web-service.

`ImageShack <https://en.wikipedia.org/wiki/ImageShack>`_ is a subscription-based image hosting website. The company also facilitates the sale of digital and print media for amateur and professional photographers.

The tool can be used to upload a selection of images from your collection to the remote ImageShack server using the Internet.

When accessing the tool for the first time from the :menuselection:`Export --> Export to ImageShack` :kbd:`Ctrl+Alt+Shift+M` menu entry, you are taken through the process of obtaining a token which is used for authentication purposes. The following dialog will popup and a browser window will be launched so you can log into ImageShack:

.. figure:: images/export_imageshack_login.webp
    :alt:
    :align: center

    The ImageShack Login Dialog

After successful sign-up, digiKam will be allowed to send photos to the ImageShack website. Then, simply authorize the application and close the web browser. Returning to the host application dialog, you will see the interface used to upload photos to ImageShack.

.. figure:: images/export_imageshack_dialog.webp
    :alt:
    :align: center

    The ImageShack Export Tool Dialog

By default, the tool proposes to export the currently selected items from the icon-view. The **+** Photos button can be used to append more items on the list.

With the **Album** options, you can select the online folder to store files to upload. You can create a **New Album** or **Reload** the list in the combo-box if the online contents have changed in the ImageShack web interface.

If the **Resize photos before uploading** option is selected, the photos will be resized before transferring to ImageShack. The values will be read from the **JPEG quality** and **Maximum Dimension** settings, which can be used to adjust the maximum height and the compression. The width calculation will be done so as to maintain the aspect ratio.

The **Make private** option sets an ImageShack flag for an image to be non public. The **Tags** text field allows you to assign extra keywords to images in the ImageShack hosting web-service.

.. figure:: images/export_imageshack_progress.webp
    :alt:
    :align: center

    The ImageShack Export Uploading in Progress

Press the **Upload** button to transfer items. You can click on the **Cancel** button to abort the uploading of photos.

Finally, you can view the uploaded photos by visiting the ImageShack website.

.. figure:: images/export_imageshack_stream.webp
    :alt:
    :align: center

    The ImageShack Online Account Displaying the Uploaded Contents
