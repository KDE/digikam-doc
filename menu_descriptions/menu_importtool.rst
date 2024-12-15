.. meta::
   :description: digiKam Import Tool Menu Descriptions
   :keywords: digiKam, documentation, user manual, photo management, open source, free, learn, easy, menu, import tool

.. metadata-placeholder

   :authors: - digiKam Team

   :license: see Credits and License page for details (https://docs.digikam.org/en/credits_license.html)

.. _menu_importtool:

:ref:`Import Tool Menu <menu_descriptions>`
===========================================

.. contents::

.. figure:: images/menu_import_tool.webp
    :alt:
    :align: center

    The digiKam Import Tool Menu

.. tip::

    .. |icon_hamburger| image:: images/menu_icon_hamburger.webp

    When switching into **Full-Screen Mode** :kbd:`Ctrl+Shift+F`, or when you **Hide Menubar** :kbd:`Ctrl+M`, the main menu will be available on the right side of toolbar with the **Hamburger Button** |icon_hamburger|.

The Device Menu
---------------

:menuselection:`Device --> Capture`

    Perform tethered shooting with your camera (supported only by `gPhoto2 devices <http://gphoto.org/doc/remote/>`_).

:menuselection:`Device --> Information`

    Show current device information as driver version and features.

.. figure:: images/menu_import_device_info.webp
    :alt:
    :align: center

    The digiKam Import Tool Device Information Dialog

:menuselection:`Device --> Cancel`

    Cancel all operations done in background with the device, such as thumbnails loading, downloading files, renaming, etc.

:menuselection:`Device --> Close` :kbd:`Ctrl+W`

    Close digiKam Import Tool.

The Edit Menu
-------------

Description of all common **Selection** options can be found in :ref:`Main Window Edit Menu <menu_mainedit>`.

:menuselection:`Edit --> Select New Items`

    Select new items automatically detected in the device.

:menuselection:`Edit --> Select Locked Items` :kbd:`Ctrl+L`

    Select locked items in the device.

The Item Menu
-------------

:menuselection:`Item --> Download New` :kbd:`Ctrl+N`

    Download new items from device to the computer.

:menuselection:`Item --> Download Selected`

    Download selected items from device to the computer.

:menuselection:`Item --> Download All`

    Download all items from device to the computer.

:menuselection:`Item --> Download & Delete New` :kbd:`Shift+Ctrl+N`

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

    Allows you to upload new items from your computer to the device. This feature is not supported by some gPhoto2 based devices. See :menuselection:`Device --> Information` for details.

:menuselection:`Item --> Mark as downloaded`

    Allows you to mark as downloaded selected items from the device.

:menuselection:`Item --> Toggle Lock` :kbd:`Ctrl+G`

    Allows you to lock selected items from the device for the deletion (read only). This feature is not supported by some gPhoto2 based devices. See :menuselection:`Device --> Information` for details.

The View Menu
-------------

:menuselection:`View --> Show History` :kbd:`Ctrl+H`

    Show the history view with all exchanges between the computer and the device.

:menuselection:`View --> Group Items`

    This entry hosts all options to group items in Icon-View by features. Available choices are:

        - **Flat List** do not group items.
        - **By Folder** arrange items depending on common parent directory in camera storage,
        - **By Format** arrange items depending on type-mime.
        - **By Date** arrange items depending on capture time-stamp.

All other options are the same as entries available in :ref:`Main Window View Menu <menu_mainview>`.

The Settings Menu
-----------------

See description in the :ref:`Main Window <menu_mainsettings>` section.

The Help Menu
-------------

See description in the :ref:`Main Window <menu_mainhelp>` section.
