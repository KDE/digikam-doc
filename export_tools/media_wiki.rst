.. meta::
   :description: digiKam Export to Wikimedia Web-Service
   :keywords: digiKam, documentation, user manual, photo management, open source, free, learn, easy, wikimedia, export

.. metadata-placeholder

   :authors: - digiKam Team

   :license: see Credits and License page for details (https://docs.digikam.org/en/credits_license.html)

.. _media_wiki:

Export To Wikimedia
===================

.. contents::

Sharing is caring, and there is probably no better way to share your photographic masterpieces with the world than adding them to the `Wikimedia Commons <https://commons.wikimedia.org/wiki/Main_Page>`_ pool. While the project’s website features its own tool for uploading photos, digiKam’s Wikimedia Export plugin can come in rather handy when you need to export multiple photos in one fell swoop without leaving the convenience of your favorite photo management application.

`Wikimedia Commons <https://en.wikipedia.org/wiki/Wikimedia_Commons>`_ is a media repository where free-to-use images can be uploaded in goal to be used across all of the Wikimedia projects as **Wikipedia** encyclopedia.

You can access to this tool by the :menuselection:`Export --> Export to MediaWiki` menu entry, or the corresponding icon from the **Tools** tab in Right Sidebar.

.. figure:: images/export_media_wiki.webp
    :alt:
    :align: center

    The MediaWiki Export Dialog

After successful signup digiKam will be allowed to send photos to the flickr website. You will be presented with the following page on successful signup:

.. figure:: images/export_flickr_authorize.webp
    :alt:
    :align: center

    The Flickr Export Authorize Dialog

Then, simply authorize application and close the web browser. Return to the host application dialog, you will see the interface used to upload photos to Flickr.

When the tool is invoked for second time or later you are greeted with the following dialog, which shows the current account already used previously. Just select one from the list to be connected.

.. figure:: images/export_flickr_account.webp
    :alt:
    :align: center

    The Flickr Export Dialog to Select the Previously Registered Account

The main upload dialog is shown below:

.. figure:: images/export_flickr_dialog.webp
    :alt:
    :align: center

    The Flickr Export Tool Dialog

By default, the tool proposes to export the currently selected items from the icon-view. The **+** Photos button can be used to append more items on the list.

With the **Album** options, you can select the online folder to store files to upload. You can **Create** new one an **Reload** the list on the combo-box if online contents have been changed in Flickr web interface.

The **Tag options** section can be used to apply digiKam keywords to the flickr upload. More keywords can be assigned with a series of words (comma separated).

The **Public**, **Friends**, and **Family** check-boxes can be turned on to assign appropriate access permissions to the images you upload. By default the images uploaded are private.

If the **Resize photos before uploading** option is selected, the photos will be resized before transferring to Flickr. The values will be read from the **Maximum Dimension** combo-box, which can be used to adjust the maximum height. The width calculation will be done so as to have the aspect ratio conserved.

.. figure:: images/export_flickr_progress.webp
    :alt:
    :align: center

    The Flickr Export Uploading in Progress

Press **Start Uploading** button to transfer items. You can click Cancel button to abort the uploading of photos.

Finally, you can view the uploaded photos by visiting the Flickr website.

.. figure:: images/export_flickr_stream.webp
    :alt:
    :align: center

    The Flickr Online Account Displaying the Uploaded Contents
