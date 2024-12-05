.. meta::
   :description: digiKam Import from Google Web-Service
   :keywords: digiKam, documentation, user manual, photo management, open source, free, learn, easy, google, impport

.. metadata-placeholder

   :authors: - digiKam Team

   :license: see Credits and License page for details (https://docs.digikam.org/en/credits_license.html)

.. _google_import:

:ref:`Import from Google <import_tools>`
========================================

.. contents::

Overview
--------

This tool uploads photos to, and imports photos from, the `Google Photo <https://en.wikipedia.org/wiki/Google_Photos>`_ web service.

**Google Photos** is a photo sharing service that automatically analyzes photos, identifying various visual features and subjects. Users can search for anything in photos including faces and group similar ones together.

The tool can be used to download files from the remote Google Photo server to the image collections on your computer using the Internet. Use the :menuselection:`Import --> Import from Google Photo` :kbd:`Alt+Shift+P` menu entry to access to this tool, or use the icon from the **Tools** tab in the Right Sidebar.

Login to your Account
---------------------

When accessing the tool for the first time you are taken through the process of obtaining a token which is used for authentication purposes. The following dialog will popup and a browser window will be launched to help you log in to Google:

.. figure:: images/import_google_login.webp
    :alt:
    :align: center

    The Google Dialog to Select Account

After successful signup, digiKam will be allowed to send photos to the Google website. You will be presented with the following page on successful signup:

.. figure:: images/import_google_authorize.webp
    :alt:
    :align: center

    The Google Dialog to Authorize Application

Then, simply authorize the application and close the web browser. Returning to the host application dialog, you will see the interface used to upload photos to Google.

.. note::

    When the tool is invoked for a second time, it will automatically remember the previous account.

Download from your Account
--------------------------

The download dialog for **Google Photo** web-service is presented below:

.. figure:: images/import_google_photo_dialog.webp
    :alt:
    :align: center

    The Google Photo Import Dialog

With the **Album** options, you can select the online folder to get files to download. You can **Reload** the list in the combo-box if the online contents have changed in the Google web interface.

The hierarchy of physical **Albums** in your collection are shown at the bottom of the main dialog. Specify the target Album where the files should be imported, or press the **New Album** button to create a new album for the downloaded files.

Press the **Start Download** button to transfer the photos. You can click on the **Close** button to abort the transfer.
