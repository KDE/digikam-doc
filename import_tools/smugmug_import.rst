.. meta::
   :description: digiKam Import from SmugMug Web-Service
   :keywords: digiKam, documentation, user manual, photo management, open source, free, learn, easy, smugmug, import

.. metadata-placeholder

   :authors: - digiKam Team

   :license: see Credits and License page for details (https://docs.digikam.org/en/credits_license.html)

.. _smugmug_import:

:ref:`Import from SmugMug <import_tools>`
=========================================

This tool downloads photos from the SmugMug web service.

`SmugMug <https://en.wikipedia.org/wiki/SmugMug>`_ is an image sharing, image hosting, and online video platform on which users can upload photos and videos. The company also facilitates the sale of digital and print media for amateur and professional photographers.

The tool can be used to download files from the remote SmugMug server to the image collections on your computer using the Internet. Use the :menuselection:`Import --> Import from SmugMug` :kbd:`Alt+Shift+S` menu entry to access to this tool, or use the icon in the **Tools** tab in the Right Sidebar. You will be taken through the process of obtaining a token which is used for authentication purposes. The following dialog will popup and a browser window will be launched to help you log in to SmugMug:

.. figure:: images/import_smugmug_login.webp
    :alt:
    :align: center

    The SmugMug Login Dialog

After successful sign-up, digiKam will be allowed to send photos to the SmugMug website. You will be presented with the following page:

.. figure:: images/import_smugmug_authorize.webp
    :alt:
    :align: center

    The SmugMug Authorize Dialog

Then, simply authorize the application and close the web browser. Returning to the host application dialog, you will see the interface used to download photos from SmugMug.

.. figure:: images/import_smugmug_dialog.webp
    :alt:
    :align: center

    The SmugMug Import Tool Dialog

With the **Album** options, you can select the online folder to get files to download. You can **Reload** the list in the combo-box if the online contents have changed in the SmugMug web interface.

The hierarchy of physical **Albums** in your collection are shown at the bottom of the main dialog. Specify the target Album where the files should be imported, or press the **New Album** button to create a new album for the downloaded files.

Press the **Start Download** button to transfer the photos. You can click on the **Close** button to abort the transfer.
