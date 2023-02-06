.. meta::
   :description: The digiKam Tool to Share With DLNA
   :keywords: digiKam, documentation, user manual, photo management, open source, free, learn, easy, DLNA, UPNP, share

.. metadata-placeholder

   :authors: - digiKam Team

   :license: see Credits and License page for details (https://docs.digikam.org/en/credits_license.html)

.. _media_server:

Media Server
============

.. contents::

DLNA Media-Server is used to automatically export digiKam photos through the local network to other `DLNA-compliant devices <https://en.wikipedia.org/wiki/Digital_Living_Network_Alliance>`_ like smart phones, TV, and tablets.

To start the media-server, head to the **Tools** tab from the **Right Side-bar**. You will find the **Share with DLNA** icon on the list. You can also start it from the :menuselection:`Tools --> Share with DLNA` menu entry. The media-server window will open as follows: 

.. figure:: images/dlna_media_server.webp
    :alt:
    :align: center

    The DLNA Media-Server Dialog

To add items just select your desired **Albums** from the nested lists. You can share from physical **Albums**, or virtual **Tags**, **Searches**, and **Labels**. When the selection is done, press the **Start** button, a wheel on the right side will indicate that server is currently running.

You can hide this media-server window (without closing the actual server) using the **Ok** button. If you want shutdown the server, re-open the Media-Server dialog and press the **Stop** button. Note that the files and folders you specify will be saved for you to use in later sessions.

Use the option **Start Server at Startup** if you want to run the media-server automatically once you start digiKam.

.. figure:: images/dlna_server_running.webp
    :alt:
    :align: center

    The DLNA Media-Server is Running and can be Closed with the Stop Button

After you start the media-server, you might have to wait for about 30 seconds to one minute before other devices in the network can see your server, so please be patient.

This server was tested with some client applications. This list includes:

    - GUPnP AV (PC - archlinux)

    - Kodi media player (Android TV)

    - BubbleUPnP (Android Tablet)

    - MediaHouse (Android Phone)

    - AnDLNA (Android)

    - VLC media player 3.0.16 (PC - Ubuntu) - Note: Older versions of VLC do not work properly.

.. figure:: images/dlna_contents_vlc.webp
    :alt:
    :align: center

    The Shared Contents from digiKam Discovered Over the Network by VLC Media Player
