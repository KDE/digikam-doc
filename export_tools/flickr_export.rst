.. meta::
   :description: digiKam Export to Flickr Web-service
   :keywords: digiKam, documentation, user manual, photo management, open source, free, learn, easy, flickr

.. metadata-placeholder

   :authors: - digiKam Team

   :license: see Credits and License page for details (https://docs.digikam.org/en/credits_license.html)

.. _flickr_export:

Export To Flickr
================

.. contents::

This tool allows the user to upload photos to the Flickr web service.

Flickr is an online photo management application. Flickr is a way to get your photos to the people who matter to you. With Flickr you can show off your favorite photos to the world, blog the photos you take with a cameraphone, and securely and privately show photos to your friends and family around the world.

The tool can be used to upload an image collection from your computer to the remote flickr server using the Internet.

When accessing the tool for the first time you are taken through the process of obtaining a token which is used for authentication purposes. The following dialog will popup and a browser window will be launched you will log in to Flickr:

.. figure:: images/export_flickr_login.webp

After successful signup digiKam will be allowed to send photos to the flickr website. You will be presented with the following page on successful signup:

.. figure:: images/export_flickr_authorize.webp

Then, simply authorize application and close the web browser. Return to the host application dialog, you will see the interface used to upload photos to Flickr, described in the next section.

When the the tool is invoked for second time or later you are greeted with the following dialog, which shows the current account already used previously. Just select one from the list to be connected.

.. figure:: images/export_flickr_account.webp

The Main upload dialog is shown below:

.. figure:: images/export_flickr_dialog.webp

By default, the tool propose to export the currently selected items from the icon-view. The **+** Photos button can be used to append more items on the list.

The **Tag options** section can bused to apply digiKam keywords to the flickr upload. More keywords can be assigned with a series of words (comma separated).

The **Public**, **Friends**, and **Family** checkboxes can be turned on to assign appropriate access permissions to the images you upload. By default the images uploaded are private.

If the **Resize photos before uploading** option is selected, the photos will be resized before transferring to Flickr. The values will be read from the **Maximum Dimension** combobox, which can be used to adjust the maximum height. The width calculation will be done so as to have the aspect ratio conserved.

.. figure:: images/export_flickr_progress.webp

Press **Start Uploading** button to transfer items. You can click Cancel button to abort the uploading of photos.

Finally, you can view the uploaded photos by visiting the Flickr website.

.. figure:: images/export_flickr_stream.webp
