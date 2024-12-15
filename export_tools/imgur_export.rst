.. meta::
   :description: digiKam Export to Imgur Web-Service
   :keywords: digiKam, documentation, user manual, photo management, open source, free, learn, easy, imgur, export

.. metadata-placeholder

   :authors: - digiKam Team

   :license: see Credits and License page for details (https://docs.digikam.org/en/credits_license.html)

.. _imgur_export:

:ref:`Export To Imgur <export_tools>`
=====================================

This tool allows the user to upload photos to the Imgur web-service.

`Imgur <https://en.wikipedia.org/wiki/Imgur>`_ is an online image sharing and image hosting service with a focus on social gossip.

The tool can be used to upload a selection of images from your collections to the remote Imgur server using the Internet. Files transfer can be anonymous or connected with an account.

When accessing the tool for the first time from the :menuselection:`Export --> Export to Imgur` menu entry, this dialog will appear:

.. figure:: images/export_imgur_dialog.webp
    :alt:
    :align: center

    The Imgur Export Tool Dialog

You can directly upload contents without connecting to an account using the **Upload Anonymously** button. By default, the tool proposes to export the currently selected items from the icon-view. The **+** Photos button can be used to append more items to the list.

To be connected with an account, press the **Upload** button, you then will be taken through the process of obtaining a token which is used for authentication purposes. The following dialog will popup and a browser window will be launched so you can log into Imgur:

.. figure:: images/export_imgur_authorize.webp
    :alt:
    :align: center

    The Imgur Authorize and Login Dialog

After successful sign-up, digiKam will be allowed to send photos to the Imgur website. Then, simply authorize the application and close the web browser. Returning to the host application dialog, you will see the interface uploading photos to Imgur. You can click on the **Close** button to abort the uploading of photos.

When items are uploaded to Imgur, the dialog will populate a list of the urls to directly access the uploaded images along with the urls to delete the online images. Use the context menu over the items list to copy the urls onto the clipboard for pasting into other applications.

.. figure:: images/export_imgur_downloaded.webp
    :alt:
    :align: center

    The Imgur Export Tool Dialog After Downloading Contents with an Account

Finally, you can view the uploaded photos by visiting the Imgur website.

.. figure:: images/export_imgur_stream.webp
    :alt:
    :align: center

    The Imgur Online Account Displaying the Uploaded Contents
