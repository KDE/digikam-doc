.. meta::
   :description: digiKam Camera Settings
   :keywords: digiKam, documentation, user manual, photo management, open source, free, learn, easy

.. metadata-placeholder

   :authors: - digiKam Team (see Credits and License for details)

   :license: Creative Commons License SA 4.0

.. _camera_settings:

Camera Settings
================

.. contents::

The camera settings shows on the left of the list of the currently supported cameras. On the right at the top there is an auto-detect button, which tries to identify the camera connected to your computer (make sure that the camera is connected properly to the computer and turned on in the image display mode). Below this are the port settings; the currently supported are Serial, USB, and Mass Storage. 

.. figure:: images/setup_camera_device.webp

Clicking on a camera in the list on the left will display the supported ports which you can then select. If there is only one supported port it will be automatically selected. At the bottom on the right there is a box for setting the exact path in case of a serial port. Please note that USB interface does not need any paths to be set. If you cannot find your camera on the list, you can try to use a generic Mass Storage device selecting Mounted Camera item in the list.

At the very bottom is where you set the path for a USB or FireWire (IEEE-1394 or i-link) Mass Storage camera. This box becomes active once you select USB or FireWire Mass Storage camera in the camera list. You need to enter here the path where you mount the camera, usually "/mnt/camera" or "/mnt/removable".

.. figure:: images/setup_camera_add.webp

To be able to use your digital camera with digiKam, connect the camera to your computer, switch the camera to the image display mode and turn it on.

Try and see if digiKam can auto-detect the camera; if not, you can set the camera model and port manually. Once you have the camera setup, go to the "Cameras" menu in the main interface and you will see the camera listed in the menu.

..note ::

    You can choose any title you like for the camera in the setup and this title will be used in the main window Cameras menu. If you have more than one camera, you can add them through this setup interface.

With the **Behavior** section, you can customize some main rules with your camera as how to deep in file to handle metadata, render high quality thubnails, use a default target album to download items, and to deal with alaready existing file-names while downloading.

.. figure:: images/setup_camera_behavior.webp

With the **Import Filter** section, you can customize the list of type mime filters, and list the file patterns to ignore while downloading.

.. figure:: images/setup_camera_filters.webp

With the **Import Window** section, you can customize options for icon-view information, the preview behavior, and the full-screen elements to show.

.. figure:: images/setup_camera_window.webp
