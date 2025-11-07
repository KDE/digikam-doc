.. meta::
   :description: digiKam Export to Remote Computer
   :keywords: digiKam, documentation, user manual, photo management, open source, free, learn, easy, remote, computer, export

.. metadata-placeholder

   :authors: - digiKam Team

   :license: see Credits and License page for details (https://docs.digikam.org/en/credits_license.html)

.. _file_transfer:

:ref:`Export To Remote Computer <export_tools>`
===============================================

.. contents::

Introduction
------------

This tool allows you to upload files from your collections to a remote computer using a network. It is available from the :menuselection:`Export --> Export to remote storage` :kbd:`Ctrl+Alt+Shift+K` menu entry or the corresponding icon in the **Tools** tab in the Right Sidebar. The tool uses the KDE KIO-slaves in the background to communicate with the remote target.

.. figure:: images/export_remote_dialog.webp
    :alt:
    :align: center

    The Export to Remote Computer Dialog

.. _kio_protocols:

KIO-Slaves Protocols
--------------------

KDE's KIO-Slaves allow you to access local and remote resources seamlessly from applications like digiKam. Below is a list of the most commonly used KIO-Slaves protocols for file export and remote access:

.. list-table::
   :widths: 20 50 30
   :header-rows: 1

   * - Protocol
     - Description
     - Example
   * - ``file://``
     - Access local files and directories.
     - ``file:///home/user/folder/``
   * - ``ftp://``
     - Access files on an FTP server (unencrypted).
     - ``ftp://user:password@server.com/folder/``
   * - ``sftp://``
     - Securely access files via SFTP (SSH).
     - ``sftp://user@server.com/path/``
   * - ``fish://``
     - Access files over SSH (alternative to SFTP).
     - ``fish://user@server.com/path/``
   * - ``smb://``
     - Access Windows/Samba network shares.
     - ``smb://server/share/``
   * - ``nfs://``
     - Access files on an NFS share.
     - ``nfs://server/path/``
   * - ``http://``
     - Access web resources (read-only).
     - ``http://example.com/file.txt``
   * - ``https://``
     - Securely access web resources.
     - ``https://example.com/file.txt``
   * - ``webdav://``
     - Access files on a WebDAV server.
     - ``webdav://server.com/path/``
   * - ``webdavs://``
     - Securely access files on a WebDAV server (HTTPS).
     - ``webdavs://server.com/path/``
   * - ``remote://``
     - Manage saved network connections (SSH, FTP, etc.).
     - ``remote:/`` (then select a saved connection)
   * - ``man://``
     - Access system manual pages.
     - ``man:/ls``
   * - ``info://``
     - Access GNU info documentation.
     - ``info:/bash``
   * - ``tar://``
     - Browse the contents of a tar archive.
     - ``tar:///path/to/file.tar``
   * - ``zip://``
     - Browse the contents of a zip archive.
     - ``zip:///path/to/file.zip``
   * - ``audiocd://``
     - Access audio tracks from a CD.
     - ``audiocd:/?track=1``
   * - ``system://``
     - Access system information.
     - ``system:/``
   * - ``trash://``
     - Access the trash bin.
     - ``trash:/``
   * - ``network://``
     - Browse network resources (Samba, FTP, etc.).
     - ``network:/``
   * - ``fonts://``
     - Access installed fonts.
     - ``fonts:/``
   * - ``applications://``
     - Access installed applications.
     - ``applications:/``
   * - ``settings://``
     - Access system settings.
     - ``settings:/``

.. warning::
   Protocols like ``ftp://`` are **not secure**. Prefer ``sftp://`` or ``fish://`` for sensitive transfers.

.. tip::
   To see the full list of available KIO-Slaves on your system, open **KInfoCenter** (run ``kinfocenter``) and check the **Protocols** tab.

How to use this tool
--------------------

In this dialog, to be connected to the remote device, you can use protocols such as:

    - **fish://**: (ssh).
    - **ftp://**: .
    - **sftp://**: 
    - **smb://**: 
    - **network://**: 
    - **webdav://**: 

     For example,

    - **fish://user_name@remote_computer**: connect to the *remote_computer* with *user_name* using SSH protocol (Secure SHell).
    - **ftp://user_name@remote_computer**: connect to the *remote_computer* with *user_name* using FTP protocol (File Transfer Protocol).

Instead of using the **Target Location** url field, you can use the native desktop url selector by pressing the **Select Export Location** button. A dialog will appear where you can see and select remote devices in the network section of the dialog:

.. figure:: images/export_remote_url_selector.webp
    :alt:
    :align: center

    The Export to Remote Computer Url Selector Dialog Under Linux.

.. note::

    The native url selector dialog is only available if you turn on the right option in :menuselection:`Settings --> Configure digiKam... --> Miscellaneous page --> Appearance tab` as described in the :ref:`appearance settings <appearance_settings>` section of this manual.

By default, the tool proposes to export the currently selected items from the icon-view. The **+** Photos button can be used to append more items to the list.

Once you have selected the right target to upload the files, press the **Start Export** button to process the files. You can abort the operation by pressing the **Close** button.
