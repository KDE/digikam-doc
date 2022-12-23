.. meta::
   :description: How to Install digiKam Photo Management Program
   :keywords: digiKam, documentation, user manual, photo management, open source, free, learn, easy, install, Installation

.. metadata-placeholder

   :authors: - Gilles Caulier <caulier dot gilles at gmail dot com>

   :license: Creative Commons License SA 4.0

.. _application_install:

Installation
============

.. contents::

Visit `the download page <https://www.digikam.org/download/>`_ of the digiKam Web site for up to date information on installing stable **digiKam**.

You’ll find all previous digiKam versions in the `attic <https://download.kde.org/Attic/digikam/>`_.

Minimum system requirements
---------------------------

**Operating system:** 64-bit Windows 7 or newer, Apple macOS 10.15 (Catalina) or newer and on M1, 64-bit Linux. Details see below.

**CPU:** x86 Intel or AMD; at least one 2 GHz core for standard photo processing, 4 cores for large photo or panorama processing, 8 cores for depp-learning uses as with face detection and image quality sorting. Details see below.

**GPU:** OpenGL 2.0 that works correctly and is compatible. On Windows, you can also use a card with good, compatible DirectX 9 or 11 drivers.

**RAM:** At least 4 GB for standard photo precessing, 8 GB for large photo or panorama processing, 16 GB for depp-learning uses as with face detection and image quality sorting. Details see below.

.. note::

   If your computer is at the lower end of CPU and RAM requirements, you should use both :ref:`Small Thumnails Resolution <thumbnails_resolution>` and :ref:`Loading Embedded Preview <preview_resolution>` features to help reduce preview lag.

digiKam on Linux
-----------------

**digiKam** can be installed on non-KDE Desktops without any issues.

**Packages:** Minimum Ubuntu 18.04 for AppImage has no such minimal requirements. 

.. _digikam_windows:

digiKam on Windows
-------------------

**digiKam** runs only on 64bit version of Windows. digiKam runs on Windows 7 and newer. We cannot guarantee that digiKam runs on server or embedded Windows version.

digiKam is available as an install and as a standalone version.

- Install version: Needs administrator rights and gets installed on your local machine. It's also listed as a program.

   - It's available for all users on your computer.

   - The digiKam files are always located in the same folder.

- Standalone version: **Doesn't** need administrator rights and isn't installed. It's **not** listed as a program. Is only accessible for the user who has downloaded the file.  

   - If you work with a normal user on your computer, you can use digiKam.

   - You can copy the digiKam folder on any external drive and run it on a different computer without installing it. However, your personal settings and downloads within digiKam are related to the computer you work on.   

digiKam in a Windows domain
----------------------------

If you want to use digiKam with domain users with using Windows Active Directory and/or Group Policies (GPOs) make sure all users have read/write rights to the following folders:

.. epigraph::

   %AppData%\\digikam

   %LocalAppData%\\digikam

   %LocalAppData%\\digikamrc

   %LocalAppData%\\kxmlgui5\\digikam\digikamui.rc

Do also make sure no GPO is blocking the access to these folders.

.. _digikam_macos:

digiKam on macOS
-----------------

**digiKam** runs with Intel based Mac's on macOS 10.13 (High Sierra) and newer.

digiKam runs also on Mac M1 computers using Rosetta version 2 binary translator.

Install procedure
~~~~~~~~~~~~~~~~~

When the dmg file is downloaded, to start the installer, give the rights to run from the MacOS Config Pannel/Security and Confidentiality. When installer is running, follow instructions from the assistant.

.. _configuration:

Configuration Information
-------------------------

digiKam's application-wide persistent settings are stored in the following locations, depending on your platform. 

.. list-table::
   :header-rows: 1

   * - Linux
     - Windows
     - macOS
     - Description
   * - :file:`~/.config/digikamrc`
     - :file:`%LocalAppData%\\digikamrc`
     - :file:`~/Library/Preferences/digikamrc`
     - General settings of the application. Delete this and restart Kdenlive to reset the application to "factory" settings
   * - :file:`~/.cache/digikam`
     - :file:`%LocalAppData%\\digikam`
     - :file:`~/Library/Caches/digikam`
     - cache location storing temporary files
   * - :file:`~/.local/share/digikam`
     - :file:`%AppData%\\digikam`
     - :file:`~/Library/Application Support/digikam`
     - contains downloaded: deep-learning models, internal configuration files
   * - :file:`~/.local/share/kxmlgui5/digikam/digikamui5.rc`
     - :file:`%LocalAppData%\\kxmlgui5\digikam\\digikamui5.rc` 
     - :file:`~/Library/Application Support/digikam/kxmlgui5/digikam/digikamui5.rc`
     - contains UI configuration, if your UI is broken, delete this file
