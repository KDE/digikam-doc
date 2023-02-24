.. meta::
   :description: digiKam Import from SmugMug Web-Service
   :keywords: digiKam, documentation, user manual, photo management, open source, free, learn, easy, smugmug, import

.. metadata-placeholder

   :authors: - digiKam Team

   :license: see Credits and License page for details (https://docs.digikam.org/en/credits_license.html)

.. _smugmug_import:

Import from SmugMug
===================

.. contents::

This tool allows the user to download photos from the SmugMug web-service.

`SmugMug <https://en.wikipedia.org/wiki/SmugMug>`_ is an image sharing, image hosting service, and online video platform on which users can upload photos and videos. The company also facilitates the sale of digital and print media for amateur and professional photographers.

The tool can be used to download files from the remote SmugMug server to the image collections on your computer using the Internet. Use the :menuselection:`Import --> Import from SmugMug` :kbd:`Alt+Shift+S` menu entry to access to this tool, or use the icon from the **Tools** tab in the Right Sidebar. You will be taken through the process of obtaining a token which is used for authentication purposes. The following dialog will popup and a browser window will be launched to help you logging in to SmugMug:

.. figure:: images/import_smugmug_login.webp
    :alt:
    :align: center

    The SmugMug Login Dialog

After successful sign-up digiKam will be allowed to send photos to the SmugMug website. You will be presented with the following page:

.. figure:: images/import_smugmug_authorize.webp
    :alt:
    :align: center

    The SmugMug Authorize Dialog

Then, simply authorize application and close the web browser. Return to the host application dialog, you will see the interface used to download photos from SmugMug.

.. figure:: images/import_smugmug_dialog.webp
    :alt:
    :align: center

    The SmugMug Import Tool Dialog

With the **Album** options, you can select the online folder to get files to download. You can **Reload** the list on the combo-box if online contents have been changed in SmugMug web interface.

Below, the main dialog propose the hierarchy of physical **Albums** from your collection. Selected one target entry to import files, or if you want a new one, just press **New Album** button to create a nested entry in the tree-view.

Press **Start Download** button to transfer items. You can click on the **Close** button to abort the uploading of photos.
