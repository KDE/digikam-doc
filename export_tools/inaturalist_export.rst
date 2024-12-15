.. meta::
   :description: digiKam Export to iNaturalist Web-Service
   :keywords: digiKam, documentation, user manual, photo management, open source, free, learn, easy, inaturalist, export

.. metadata-placeholder

   :authors: - digiKam Team

   :license: see Credits and License page for details (https://docs.digikam.org/en/credits_license.html)

.. _inaturalist_export:

:ref:`Export To iNaturalist <export_tools>`
===========================================

`iNaturalist <https://en.wikipedia.org/wiki/INaturalist>`_ is a social network of naturalists, citizen scientists, and biologists built on the concept of mapping and sharing observations of biodiversity across the globe. iNaturalist users contribute to share observations of plants, animals, fungi, and other organisms worldwide.

The iNaturalist platform is based on crowd-sourcing of observations and identifications. An iNaturalist **observation** records a person's encounter with an individual organism at a particular time and place.

To upload observation shots from your collections to the remote iNaturalist server using the Internet, uses the :menuselection:`Export --> Export to iNaturalist` :kbd:`Ctrl+Alt+Shift+N` menu entry, or the corresponding icon from the **Tools** tab in Right Sidebar.

.. important::

    To push an **observation** to iNaturalist repository, shots must be geo-localized, taken in the same conditions, separated by a brief delay, and contain the same subject. A description of an observation must be provided, including the main topic.

When you launch the tool, the following dialog will popup to select the account to use with the web-service.

.. figure:: images/export_inaturalist_account.webp
    :alt:
    :align: center

    The iNaturalist Export Dialog

If no previously used account is available, press the **Add another account** button and a web-browser instance will be started with the iNaturalist login page.

.. figure:: images/export_inaturalist_login.webp
    :alt:
    :align: center

    The iNaturalist Web Page to Login in Your Account

Fill in the account and password properties and validate the settings to continue to the main tool dialog:

.. figure:: images/export_inaturalist_dialog.webp
    :alt:
    :align: center

    The iNaturalist Export Dialog

On the right side, you can see the settings view used to upload observation shots to the iNaturalist server. Even if you can use the basic settings to describe the files, we recommend you expand the list of settings with the **More options** button, to more precisely describe your observation. (The dialog above shows the dialog after pressing the **More options** button.)

On the top of the settings view, you can see the login **Account** properties used to connect to iNaturalist. You can switch to another account using the **Change Account** button. The **Remove Account** button will allow you to delete the account information used by digiKam to automatically connect to the server.

On the bottom of the settings view, you can set the upload **Options** for the images. If the **Resize photos before uploading** option is selected, the photos will be resized before transferring to iNaturalist. The values will be read from the **JPEG quality** and **Maximum Dimension** settings, which can be used to adjust the maximum height and the compression. The width calculation will be done so as to maintain the aspect ratio.

A special option is available to **Write the photo ID to the source image**. The identification number used to upload to your iNaturalist account will be recorded in the XMP metadata of the file in your collection.

In the middle of the settings view, you can set the **Observation** properties. The most important one is to identify the subject using the iNaturalist database by entering words in the **Identification** text field. The tool will query the remote server to search for the best entries with a preview. If one item matches with the observation subject, just select it.

.. figure:: images/export_inaturalist_search.webp
    :alt:
    :align: center

    The iNaturalist Export Tool Searching About Contents on Online Database

The **Place** text property will help the iNaturalist database to identify in a human-readable way where the observation was made, as a supplement to the fact that photos have been geo-localized with a GPS.

On the left side, you can see the list of observation shots taken from the digiKam collection. From the **Date** column, the tool scans the items to find the oldest image to use as a reference, and computes the delay of all the other shots compared to this one. The maximum delay between the reference and the most recent shot must be less than the value set in the **Photos should be taken within** field in the settings view.

In the same way, the tool also scans the items to find the original place of observation using the reference image. It computes the distance of all other shots compared to this one. The maximum distance between the reference and the most recent shot must be less than the value set in the **Photos should be taken within** field in the settings view.

Press the **Start Uploading** button to transfer items. You can click on the **Close** button to abort the uploading of photos.

Finally, you can view the uploaded photos by visiting the iNaturalist website.

.. figure:: images/export_inaturalist_stream.webp
    :alt:
    :align: center

    The iNaturalist Online Account Displaying the Observed Publications
