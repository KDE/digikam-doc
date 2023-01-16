.. meta::
   :description: digiKam Camera Settings
   :keywords: digiKam, documentation, user manual, photo management, open source, free, learn, easy, camera, configuration, setup, gphoto2, usb, mass, storage

.. metadata-placeholder

   :authors: - digiKam Team

   :license: see Credits and License page for details (https://docs.digikam.org/en/credits_license.html)

.. _camera_settings:

Camera Settings
================

.. contents::

Setup a Device
--------------

The camera settings shows on the left of the list of the currently supported cameras. On the right at the top there is an auto-detect button, which tries to identify the camera connected to your computer (make sure that the camera is connected properly to the computer and turned on in the image display mode). Below this are the port settings, the currently supported are **Serial**, **USB**, **Network**, and **Mass Storage**. 

.. figure:: images/setup_camera_device.webp
    :alt:
    :align: center

    The digiKam Camera Configuration Panel with the Gphoto View

Clicking on a camera in the list from the left will display the supported ports which you can then select. If there is only one supported port it will be automatically selected. At the bottom on the right there is a box for setting the exact path in case of a serial port. Please note that USB interface does not need any paths to be set. If you cannot find your camera on the list, you can try to use a generic **Mass Storage** device selecting Mounted Camera item in the list.

At the very bottom is where you set the path for a USB or FireWire (IEEE-1394 or i-link) Mass Storage camera. This box becomes active once you select USB or FireWire Mass Storage camera in the camera list. You need to enter here the path where you mount the camera, usually :file:`/mnt/camera` or :file:`/mnt/removable`.

.. figure:: images/setup_camera_add.webp
    :alt:
    :align: center

    Dialog to Add a Camera Device Using Gphoto Drivers

To be able to use your digital camera with digiKam, connect the camera to your computer, switch the camera to the image display mode and turn it on.

Try and see if digiKam can auto-detect the camera; if not, you can set the camera model and port manually. Once you have the camera setup, go to the **Cameras** menu in the main interface and you will see the camera listed in the menu.

.. note::

    You can choose any title you like for the camera in the setup and this title will be used in the main window **Cameras** menu. If you have more than one camera, you can add them through this setup interface.

.. _camera_behavior:

Customize the Behavior
----------------------

With the **Behavior** section, you can customize some main rules with your camera as how to deep in file to handle metadata, render high-quality thumbnails, use a default target album to download items, and to deal with already existing file-names while downloading.

.. important::

    Some options can slow-down the connection stage to the camera. Application will populate icon-view with in-deep metadata while scanning items from the device.

.. figure:: images/setup_camera_behavior.webp
    :alt:
    :align: center

    The digiKam Camera Configuration Panel with the Behavior View

.. _camera_fiters:

Running Filters at Download
---------------------------

With the **Import Filter** section, you can customize the list of type mime filters, and list the file patterns to ignore while downloading.

.. figure:: images/setup_camera_filters.webp
    :alt:
    :align: center

    The digiKam Camera Configuration Panel with the Import Filters View

.. _camera_interface:

Customize Import Interface
--------------------------

With the **Import Window** section, you can customize options for icon-view information, the preview behavior, and the full-screen elements to show.

.. figure:: images/setup_camera_window.webp
    :alt:
    :align: center

    The digiKam Camera Configuration Panel with the Import Window View
