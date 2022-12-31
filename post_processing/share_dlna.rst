.. meta::
   :description: The digiKam Share With DLNA
   :keywords: digiKam, documentation, user manual, photo management, open source, free, learn, easy, DLNA, UPNP, share

.. metadata-placeholder

   :authors: - digiKam Team

   :license: see Credits and License page for details (https://docs.digikam.org/en/credits_license.html)

.. _share_dlna:

Share With DLNA
===============

.. contents::

DLNA Mediaserver is used to automatically export digiKam photos through the local network to other `DLNA-compliant devices <https://en.wikipedia.org/wiki/Digital_Living_Network_Alliance>`_ like smart phones, TV, and tablets.

To start the mediaserver, head to the right bar and click the Tools menu. You will find the dlna server icon as shown in the next screenshot. You can also start it from the Tools menu in the main toolbar. The mediaserver window will open as follows: 

.. figure:: images/dlna_media_server.webp

To add Items just select albums to share from the nested list. You can share from physical Albums, Tags, Searches, and Labels. When the selection is done, press the **Start** button, a wheel on the right will indicate that server is currently running. You can hide this mediaserver window (without closing the actual server) using the Hide Window button. If you want to close the window AND the server, press the ordinary cross to the top-right of the window. Note that the files and folders you specify will be saved for you to use in later sessions.

Use the option **Start Server at Startup** if you want to start the mediaserver automatically once you start digiKam.

If you want to shutdown the server, just press the **Stop** button.

.. figure:: images/dlna_server_running.webp

After you start the server, you might have to wait for about 30 seconds to one minute before other devices in the network can see your server, so please be patient.

This server was tested with some client applications. This list includes:

   GUPnP AV (PC - archlinux)

   Kodi media player (Android TV)

   BubbleUPnP (Android Tablet)

   MediaHouse (Android Phone)

   AnDLNA (Android)

   VLC media player 3.0.16 (PC - Ubuntu) - Note: Older versions of VLC do not work properly.

.. figure:: images/dlna_contents_vlc.webp
