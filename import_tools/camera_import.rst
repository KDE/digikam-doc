.. meta::
   :description: digiKam Import From Digital Camera
   :keywords: digiKam, documentation, user manual, photo management, open source, free, learn, easy, camera, import

.. metadata-placeholder

   :authors: - digiKam Team

   :license: see Credits and License page for details (https://docs.digikam.org/en/credits_license.html)

.. _camera_import:

Import From Camera
==================

.. contents::

.. figure:: images/camera_main_interface.webp
    :alt:
    :align: center

    The digiKam Import Tool Main Interface

Getting Information About The Photographs
-----------------------------------------

Before downloading photographs to your computer, you may wish to see the camera item information. Using the **Properties** and **Metadata** tabs on the Right Sidebar will launch camera and photograph properties and metadata information.

.. figure:: images/camera_item_properties.webp
    :alt:
    :align: center

    The Item Properties Sidebar Tab from Import Tool

The **Properties** tab displays file information recorded by the camera and a selection of photograph information to describe how the image has been taken. A flag indicates if the image has not yet been **Downloaded** to the computer. Note that all this information may be unavailable with some digital cameras. Another label will show you the **New Mame** of the file from camera when this one will be downloaded on the computer.

The **Metadata** tab displays internal picture's metadata like Exif, Makernotes, GPS, etc. This information is the same as :ref:`Metadata <metadata_view>` from the digiKam Right Sidebar. Note that all these metadata can be unavailable with some digital cameras.

.. figure:: images/camera_item_metadata.webp
    :alt:
    :align: center

    The Item Metadata Sidebar Tab from Import Tool

Geolocation Tab
---------------

The **Geolocation** tab will open a map that allows you to see and edit the GPS location of the selected photographs. For a detailed description see the :ref:`Geolocation section <maps_view>` of the Right Sidebar chapter of this manual.


.. figure:: images/camera_item_geolocation.webp
    :alt:
    :align: center

    The Item Geolocation Sidebar Tab from Import Tool

.. _camera_download:

Downloading Photographs To Your Computer
----------------------------------------

To download photographs from your camera to your computer click the **Download** button on the main toolbar and then click **Download All** (or use :menuselection:`Item --> Download All` from the main menu). This will download all of the photographs on the camera with the settings you used with your last download (Settings tab). The download process will not remove the photographs from the camera. It is always advisable to check that the photographs have downloaded safely into the Album you were expecting before deleting them from the camera.

.. figure:: images/camera_download_select_album.webp
    :alt:
    :align: center

    The Selection of Target Album to Download new Items from Camera

If you do not want to download all of the photographs you can select just those that you need using the standard selection methods. Once you have the photographs selected, click **Download** and then **Download Selected**. The **Download Selected** button will be grayed out until you have selected some photographs.

Another option is **Download New**. New images are marked with a **star** in the upper right corner of the image icon. Once images are downloaded a **downloaded already** entry will be made in the digiKam database and they are marked with a checker. Obviously, if you choose this handy option, it will download the new images only.

.. figure:: images/camera_item_download_indicator.webp
    :alt:
    :align: center

    On the Left an Item not yet Downloaded from the Camera with a Star on the Top Right Corner
    On the Right a Check Marker Indicate that Item have been Already Downloaded from Camera

While downloading items on your computer, on the status bar you will seen the operations in progress.

.. tip::

    To download quickly on from your camera, you can setup a common target album from your collection where all new files will be stored automatically.

    If files to download already exists on your computer, Import Tool has few options available to operate automatically in these cases.

    See :ref:`this section <camera_behavior>` from the manual for details.

.. _camera_upload:

Uploading Photographs To Your Camera
------------------------------------

To upload photographs from your computer to your camera click :menuselection:`Item --> Upload...` :kbd:`Ctrl+U` in the Import Tool menu. A standard file selection dialog will appear to select the files from your computer for copying to your camera. You can select more than one file using the standard selection methods.

.. figure:: images/camera_upload_select_items.webp
    :alt:
    :align: center

    The Selection of Items to Upload on the Camera

When images selection is done, digiKam will ask you to where you want to upload the files on your camera. A camera folder selection dialog will appear. Just select one folder and press **OK** to start uploading. No images will be removed from your computer.

.. figure:: images/camera_upload_select_camera_folder.webp
    :alt:
    :align: center

    The Selection of Camera Folder to Upload Items

.. note::

    Uploading feature is not supported by all camera drivers.

While uploading items to your camera, on the status bar you will seen the operations in progress.

.. _camera_delete:

Deleting Photographs From The Camera
------------------------------------

Once you are happy with the downloaded photographs that you wanted, you are ready to delete photographs from the Camera. You can delete all of the photographs at once by clicking the :menuselection:`Item --> Delete All` button. If you just want to delete a selection of the photographs, you have to select those that you want to delete and click :menuselection:`Item --> Delete Selected`. You may also select :menuselection:`Item --> Delete New`, for example if you feel that the images marked with the star are not worth downloading.

.. figure:: images/camera_item_delete_warning.webp
    :alt:
    :align: center

    The Warning Dialog When Items Must be Deleted from Camera

.. caution::

    Please note that there is no way to restore a photo that you have deleted from the camera. The photographs are not moved to the internal Trash Can, they are removed completely. It is best to double check that you have successfully downloaded a photograph into a digiKam album before you delete it from the camera. Anyway, if you plan to empty the camera card, you better do that from the camera menu because it is much quicker.
