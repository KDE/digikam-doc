.. meta::
   :description: Camera Devices Supported by digiKam
   :keywords: digiKam, documentation, user manual, photo management, open source, free, learn, easy

.. metadata-placeholder

   :authors: - digiKam Team

   :license: see Credits and License page for details (https://docs.digikam.org/en/credits_license.html)

.. _camera_devices:

Camera Devices
==============

.. contents::

Introduction
------------

.. note::

     RAW file support: if you are using RAW shooting mode with your camera, digiKam is probably well able to deal with it. RAW support depends on the libraw library. To find out if your particular camera is supported, bring up the list from the :menuselection:`Help --> Supported RAW Cameras` menu.

     How to setup and work with RAW files is described in :ref:`RAW Decoding Settings <setup_raw>` and :ref:`RAW Workflow <rawprocessing_workflow>` sections.

An easy-to-use camera interface is provided that will connect to your digital camera and download photographs directly into digiKam Albums. More than `2500 digital cameras <http://www.gphoto.org/proj/libgphoto2/support.php>`_ are supported by the gPhoto2 library. Of course, any media or card reader supported by your operating system will interface with digiKam.

Current digital cameras are characterized by the use of Compact Flash™ Memory cards and USB or FireWire (IEEE-1394 or i-link) for data transmission. The actual transfers to a host computer are commonly carried out using the USB Mass Storage device class (so that the camera appears as a disk drive) or using the Picture Transfer Protocol (PTP) and its derivatives. Older cameras may use the Serial Port (RS-232) connection.

Transfers using gPhoto2: PTP and Serial Port
--------------------------------------------

digiKam employs the gPhoto2 program to communicate with digital still cameras. gPhoto2 is a free, redistributable set of digital camera software applications which supports a growing number of cameras. gPhoto2 has support for the Picture Transfer Protocol, which is a widely supported protocol developed by the International Imaging Industry Association to allow the transfer of images from digital cameras to computers and other peripheral devices without the need of additional device drivers.

Many old digital still cameras used Serial Port to communicate with host computers. Because photographs are big files and serial port transfers are slow, this connection is now obsolete. digiKam supports these cameras and performs image transfers using the gPhoto2 program. You can find a complete list of supported digital cameras at `this url <http://www.gphoto.org/proj/libgphoto2/support.php>`_.

.. note::

    gPhoto2 needs to be built with libexif to retrieve thumbnails to digiKam properly. EXIF support is required for thumbnail retrieval on some libgphoto2 camera drivers. If EXIF support is not set with gPhoto2, you might not see thumbnails or the thumbnail extraction may be very slow.

Transfers using Mass Storage device
-----------------------------------

 For the devices that are not directly supported by gPhoto2, there is support for the Mass Storage protocol, which is well supported under GNU/Linux®. This includes many digital cameras and Memory Card Readers. Mass Storage interfaces are:

    - **USB Mass Storage**: a computer interface using communication protocols defined by the USB Implementers Forum that run on the Universal Serial Bus. This standard provides an interface to a variety of storage devices, including digital cameras.

    - **FireWire Mass Storage**: a computer interface using communication protocols developed primarily by Apple Computer in the 1990s. FireWire offers high-speed communications and isochronous real-time data services. Like USB Mass Storage, this standard provides an interface to a variety of storage devices, including digital still cameras. Almost all recent digital cameras support USB version 1 and eventually will support USB version 2; a very few support FireWire. 

To use a generic Mass Storage device with digiKam, select :menuselection:`Import --> Camera --> Add Camera Manually...`, add your device and set the correct mount point path.

For details see the chapter to configure digiKam, into :ref:`Camera section <camera_settings>`.
