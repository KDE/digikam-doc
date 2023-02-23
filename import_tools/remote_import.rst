.. meta::
   :description: digiKam Import from Remote Computer
   :keywords: digiKam, documentation, user manual, photo management, open source, free, learn, easy, remote, computer, import

.. metadata-placeholder

   :authors: - digiKam Team

   :license: see Credits and License page for details (https://docs.digikam.org/en/credits_license.html)

.. _remote_import:

Import from Remote Computer
===========================

.. contents::

This tool allows to download files from a remote computer to your collections using network. It available from the :menuselection:`Import --> Import from remote storage` :kbd:`Alt+Shift+K` menu entry or the corresponding icon from the **Tools** tab in Right Sidebar.

.. figure:: images/import_remote_dialog.webp
    :alt:
    :align: center

    The Import from Remote Computer Dialog

To choose files to import press **Select Import Location**, a native desktop urls selector as below must appear where you can see the discovered remote devices selecting the network section:

.. figure:: images/import_remote_selection.webp
    :alt:
    :align: center

    The Urls Selector Dialog Under Linux Choosing Files from a NAS Sharing Contents trough Samba File System.

In this dialog, you can use the protocols as **fish** (ssh), **ftp**, **smb**, etc, to be connected to the remote computer. For example;

    - **fish://user_name@remote_computer**: connect to the *remote_computer* with *user_name* using SSH protocol (Secure SHell).
    - **ftp://user_name@remote_computer**: connect to the *remote_computer* with *user_name* using FTP protocol (File Transfer Protocol).

.. note::

    The native url selector dialog is only available if you turn on the right option from the **Misc/Appearance** section of the :ref:`configuration panel <appearance_settings>`.

After selecting the files to import and closing the native desktop urls selector, these ones must appear to main dialog in the list below **Select import location** button.

Below this list of files, the main dialog propose the hierarchy of physical **Albums** form your collection. Selection one target entry to import files, or if you want a new one, just press **New Album** button to create a nested entry in the tree-view. 

When you select right target album to download files, press **Start Import** button to process files. You can abort operation pressing **Close** button.
