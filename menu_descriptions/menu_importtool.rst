.. meta::
   :description: digiKam Import Tool Menu Descriptions
   :keywords: digiKam, documentation, user manual, photo management, open source, free, learn, easy, menu, import tool

.. metadata-placeholder

   :authors: - digiKam Team

   :license: see Credits and License page for details (https://docs.digikam.org/en/credits_license.html)

.. _menu_importtool:

Import Tool Menu
================

.. contents::

.. figure:: images/menu_import_tool.webp
    :alt:
    :align: center

    The digiKam Import Tool Menu

.. tip::

    .. |icon_hamburger| image:: images/menu_icon_hamburger.webp

    When switching in **Full-Screen Mode** :kbd:`Ctrl+Shift+F`, or when you **Hide Menubar** :kbd:`Ctrl+M`, the main menu will be available on the right side of tool-bar with the **Hamburger Button** |icon_hamburger|.

The Device Menu
---------------

:menuselection:`Device --> Capture`

    Perform a tethered shooting ith your camera (supported only by `GPhoto2 devices <http://gphoto.org/doc/remote/>`_).

:menuselection:`Device --> Information`

    Show current device information as drivers version and features.

.. figure:: images/menu_import_device_info.webp
    :alt:
    :align: center

    The digiKam Import Tool Device Information Dialog

:menuselection:`Device --> Cancel`

    Cancel all operations done in background with the device, as thumbnails loading, downloading files, renaming, etc.

:menuselection:`Device --> Close` :kbd:`Ctrl+W`

    Close digiKam Import Tool.

The Edit Menu
-------------

Description of all common **Selection** options can be found in :ref:`Main Window Edit Menu <menu_mainedit>`.

:menuselection:`Edit --> Select New items`

    Select new items detected automatically in the device.

:menuselection:`Edit --> Select New items` :kbd:`Ctrl+L`

    Select locked items in the device.

The Item Menu
-------------

:menuselection:`Item --> Download New` :kbd:`Ctrl+N`

    Download new items from device to the computer.

:menuselection:`Item --> Download Selected`

    Download selected items from device to the computer.

:menuselection:`Item --> Download All`

    Download all items from device to the computer.

:menuselection:`Item --> Download & Delete New` :kbd:`Shif+Ctrl+N`

    Download new items from device to the computer and delete items from the device.

:menuselection:`Item --> Download & Delete Selected`

    Download selected items from device to the computer and delete items from the device.

:menuselection:`Item --> Download & Delete All`

    Download all items from device to the computer and delete items from the device.

:menuselection:`Item --> Delete New`

    Delete new items from the device.

:menuselection:`Item --> Delete Selected` :kbd:`Del`

    Delete selected items from the device.

:menuselection:`Item --> Delete All`

    Delete all items from the device.

:menuselection:`Item --> Upload` :kbd:`Ctrl+U`

    Allows to upload new items from your computer to the device. This feature can be not supported by some Gphoto2 based devices. See :menuselection:`Device --> Information` for details.

:menuselection:`Item --> Mark as downloaded`

    Allows to mark as downloaded selected items from the device.
 
:menuselection:`Item --> Toogle Lock` :kbd:`Ctrl+G`

    Allows to lock selected items from the device for the deletion (read only). This feature can be not supported by some Gphoto2 based devices. See :menuselection:`Device --> Information` for details.

The View Menu
-------------

:menuselection:`View --> Show History` :kbd:`Ctrl+H`

    Show the history view with all exchanges between the computer and the device.

:menuselection:`View --> Group Items`

    This entry host all options to group items in Icon-View by features. Available choices are listed below:

        - **Flat List** do not group items.
        - **By Folder** arrange items depending of common parent directory in camera storage, 
        - **By Format** arrange items depending of type-mime.
        - **By Date** arrange items depending of capture time-stamp.

All other options are the same than entries available in :ref:`Main Window View Menu <menu_mainview>`.

The Settings Menu
-----------------

See description from :ref:`Main Window <menu_mainsettings>` section.

The Help Menu
-------------

See description from :ref:`Main Window <menu_mainhelp>` section.
