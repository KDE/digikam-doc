.. metadata-placeholder

   :authors: - Eugen Mohr

   :license: Creative Commons License SA 4.0

.. _installation_troubleshooting:

Installation Troubleshooting
============================

Many problems encountered in Kdenlive are caused by installation problems (missing or mismatching packages). Kdenlive uses the MLT framework to process all video operations, and MLT uses many other libraries like FFmpeg, Frei0r, …

Here are some tips to understand what might be wrong for you, depending on the error message you get on startup. If this does not help you, check the forums.

Your MLT installation cannot be found or Cannot start MLT backend
-----------------------------------------------------------------

There is obviously something wrong with your MLT installation. Either it is not installed or not in a standard location. You can test your MLT installation from a terminal, type: `melt color:red`
This should bring up a red window (press :kbd:`q` to close it).

- If you see an error message, try reinstalling MLT or check that you don't have several versions installed on the system.

- If you see the red window, check where your MLT is installed: `which melt`. Then delete Kdenlive's config file (`$HOME/.config/kdenliverc`) and restart Kdenlive.

Missing package
---------------

A dependency is missing and it is recommended to install it.

Frei0r
~~~~~~

This package provides many effects and transitions. Without it, Kdenlive's features will be reduced. You can simply install frei0r-plugins from your package manager.

Breeze icons
~~~~~~~~~~~~

Many icons used by Kdenlive come from the Breeze Icons package. Without it, many parts of the UI will not appear correctly. You can simply install breeze-icon-theme or breeze-icons from your package manager.

MediaInfo 
~~~~~~~~~

Download and install MediaInfo from `here <https://mediaarea.net/MediaInfo/Download>`_ 

Missing MLT module
------------------

An MLT dependency is missing and it is required to install it.

**SDL** is used to output audio. Install `libsdl 1.x`` from your package manager.

**Avformat** is the FFmpeg module. Make sure you have ffmpeg installed on your system.

The following codecs were not found on your system…
----------------------------------------------------

Some audio / video codecs are not installed by default. Installing a package called `libavcodec-extra` might solve the problem.

On openSuse, you need to add the `packman repository <https://www.opensuse-community.org/>`_, then enable `replace vendor package <https://en.opensuse.org/SDB:Vendor_change_update#Full_repository_Vendor_change>`_ on the packman repository.
