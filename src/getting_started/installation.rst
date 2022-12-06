.. meta::
   :description: How to install Kdenlive video editor
   :keywords: KDE, Kdenlive, install, Installation, documentation, user manual, video editor, open source, free, learn, easy


.. metadata-placeholder

   :authors: - Annew (https://userbase.kde.org/User:Annew)
             - Claus Christensen
             - Yuri Chornoivan
             - Simon Eugster <simon.eu@gmail.com>
             - Jean-Baptiste Mardelle <jb@kdenlive.org>
             - Ttguy (https://userbase.kde.org/User:Ttguy)
             - Vincent Pinon <vpinon@kde.org>
             - Sunab (https://userbase.kde.org/User:Sunab)
             - Jack (https://userbase.kde.org/User:Jack)
             - Roger (https://userbase.kde.org/User:Roger)
             - Xyquadrat (https://userbase.kde.org/User:Xyquadrat)
             - TheMickyRosen-Left (https://userbase.kde.org/User:TheMickyRosen-Left)
             - Carl Schwan <carl@carlschwan.eu>
             - Geolgar (https://userbase.kde.org/User:Geolgar)
             - Tenzen (https://userbase.kde.org/User:Tenzen)
             - Eugen Mohr

   :license: Creative Commons License SA 4.0

.. _installation:

Installation
============

Visit the `download <https://kdenlive.org/download/>`_ page of the Kdenlive Web site for up to date information on installing **Kdenlive**.

You’ll find all previous Kdenlive versions in the `attic <https://download.kde.org/Attic/kdenlive/>`_.

Minimum system requirements
---------------------------

**Operating system:** 64-bit Windows 7 or newer, Apple macOS 10.15 (Catalina) [1]_ or newer and on M1, 64-bit Linux. Details see below.

**CPU:** x86 Intel or AMD; at least one 2 GHz core for SD-Video, 4 cores for HD-Video, and 8 cores for 4K-Video. Details see below.

**GPU:** OpenGL 2.0 that works correctly and is compatible. On Windows, you can also use a card with good, compatible DirectX 9 or 11 drivers.

**RAM:** At least 4 GB for SD-Video, 8 GB for HD-Video, and 16 GB for 4K-Video.

.. note::
   
   If your computer is at the lower end of CPU and RAM requirements, you should use both the :ref:`Preview Resolution <preview_resolution>` and :ref:`Proxy <proxy_clips_tab>` features to help reduce preview lag.

Non-KDE Desktops
----------------

**Kdenlive** can be installed on non-KDE Desktops without any issues.

Kdenlive on Windows
-------------------

**Kdenlive** runs only on 64bit version of Windows. Kdenlive runs on Windows 7 and newer. We cannot guarantee that Kdenlive runs on server or embedded Windows version.

Kdenlive is available as an install and as a standalone version.

- Install version: Needs administrator rights and gets installed on your local machine. It's also listed as a program.
   
   - It's available for all users on your computer.

   - The Kdenlive files are always located in the same folder.  

- Standalone version: **Doesn't** need administrator rights and isn't installed. It's **not** listed as a program. Is only accessible for the user who has downloaded the file.  
   
   - If you work with a normal user on your computer, you can use Kdenlive.

   - You can copy the Kdenlive folder on any external drive and run it on a different computer without installing it. However, your personal settings and downloads within Kdenlive are related to the computer you work on.   

.. epigraph::

   Double click the downloaded file.

   .. image:: /images/Kdenlive_Zip-self-extracting_archive.png
      :alt: Kdenlive_Zip-self-extracting_archive
      :width: 40%

   Point to the folder you like to store the Kdenlive folder  

   .. image:: /images/Kdenive_bin-folder.png
      :alt: Kdenive_bin-folder
      :width: 30%

   To start Kdenlive navigate to the `bin folder` and double click Kdenlive

.. rst-class:: clear-both

Kdenlive in a Windows domain
----------------------------

If you want to use Kdenlive with domain users with using Windows Active Directory and/or Group Policies (GPOs) make sure all users have read/write rights to the following folders:

.. epigraph::

   %AppData%\\kdenlive

   %LocalAppData%\\kdenlive   

   %LocalAppData%\\kdenliverc   

   %LocalAppData%\\kdenlive-layoutsrc   

   %LocalAppData%\\kxmlgui5\\kdenlive\kdenliveui.rc   

   %AppData%\\kdenlive\\.backup   

   %LocalAppData%\\knewstuff3

Do also make sure no GPO is blocking the access to these folders.

.. _kdenlive_macos:

Kdenlive on macOS
-----------------

**Kdenlive** runs with Intel based Mac's on macOS 10.15 (Catalina) and newer (available on the `download <https://kdenlive.org/download/>`_ page). 

.. versionadded:: 22.04.0

Kdenlive is running with Intel based Mac's not older than macOS 10.15 (Catalina) [1]_ and on M1.

Install procedure
~~~~~~~~~~~~~~~~~

.. image:: /images/macos_download_option.png
   :alt: macos_download_option
   :width: 30%

Choose the option *Open with DiskImageMounter (Default)*.

.. image:: /images/macos_diskimagemounter.png
   :alt: macos_diskimagemounter
   :width: 30%

When the dmg file is downloaded, the *DiskImageMounter* will open. Drag the *Kdenlive* Logo into the *Applications* Folder.

.. image:: /images/macos_copy.png
   :alt: macos_copy
   :width: 30%

The files get copied.

.. image:: /images/macos_check.png
   :alt: macos_check
   :width: 30%

MacOS will try to check the files for malware.

.. image:: /images/macos_warnig.png
   :alt: macos_warnig
   :width: 30%

The message *“kdenlive" cannot be opened, because Apple cannot search for malware in it* will appear. Here you have to click :guilabel:`Show in Finder`.

.. image:: /images/macos_right_click.png
   :alt: macos_right_click
   :width: 30%

The Finder opens. Now right click on *Kdenlive* and choose :guilabel:`Open`.

.. image:: /images/macos_open.png
   :alt: macos_open
   :width: 30%

The message that Apple can't search for malware will appear again. Just click on :guilabel:`Open` and Kdenlive will open up.

.. _configuration:

Configuration Information
-------------------------

Kdenlive's application-wide persistent settings are stored in the following locations, depending on your platform. 


.. list-table::
   :header-rows: 1

   * - Linux  
     - Windows
     - macOS  
     - Description
   * - :file:`~/.config/kdenliverc`
     - :file:`%LocalAppData%\\kdenliverc`
     -
     - General settings of the application. Delete this and restart Kdenlive to reset the application to "factory" settings
   * - :file:`~/.config/kdenlive-appimagerc`
     - 
     - 
     - Linux AppImage only: contains the general settings of the application
   * - :file:`~/.config/session/kdenlive_*`
     -
     -
     - temporary session info
   * - :file:`~/.cache/kdenlive`
     - :file:`%LocalAppData%\\kdenlive`
     -
     - cache location storing audio and video thumbnails, and proxy clips, user defined titles, LUTS, lumas, shortcuts
   * - :file:`~/.local/share/kdenlive`
     - :file:`%AppData%\\kdenlive`
     -
     - contains downloaded: effects, export, library, opencvmodels, profiles, speech models, and titles
   * - :file:`~/.local/share/kdenlive/lumas`
     - :file:`%LocalAppData%\\kdenlive\\lumas`
     -
     - lumas folder inside here contains the files used for :ref:`wipe`
   * - :file:`~/.local/share/kdenlive/.backup`
     - :file:`%AppData%\\kdenlive\\.backup`
     -
     - Auto Save Recovery files
   * - :file:`~/.config/kdenlive-layoutsrc`
     - :file:`%LocalAppData%\\kdenlive-layoutsrc` 
     -
     - contains the layout settings
   * - :file:`~/.local/share/kxmlgui5/kdenlive/kdenliveui.rc`
     - :file:`%LocalAppData%\\kxmlgui5\kdenlive\\kdenliveui.rc` 
     -
     - contains UI configuration, if your UI is broken, delete this file
   * - :file:`~/.local/share/knewstuff3`
     - :file:`%LocalAppData%\\knewstuff3` 
     - 
     - contains LUT definition
   
**Windows**

To reach above folders: :kbd:`windows + r` then copy above path into the window.

Notes
-----

.. [1] Due to QT6 compatibility the build system was switched to C++17 in January 2022 so minimum macOS requirement is macOS 10.15.