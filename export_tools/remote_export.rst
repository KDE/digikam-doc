.. meta::
   :description: digiKam Export to Remote Computer
   :keywords: digiKam, documentation, user manual, photo management, open source, free, learn, easy, remote, computer, export

.. metadata-placeholder

   :authors: - digiKam Team

   :license: see Credits and License page for details (https://docs.digikam.org/en/credits_license.html)

.. _remote_export:

Export To Remote Computer
=========================

.. contents::

This tool allows to upload files from your collections to a remote computer using network. It available from the :menuselection:`Export --> Export to remote storage` :kbd:`Ctrl+Alt+Shift+K` menu entry or the corresponding icon from the **Tools** tab in Right Sidebar.

.. figure:: images/export_remote_dialog.webp
    :alt:
    :align: center

    The Export to Remote Computer Dialog

Protocols as **fish** (ssh), **ftp**, **smb**, etc, can be used in connection from **Target Location** url editor. For example:

    - **fish://user_name@remote_computer**: connect to the *remote_computer* with *user_name* using SSH protocol (Secure SHell).
    - **ftp://user_name@remote_computer**: connect to the *remote_computer* with *user_name* using FTP protocol (File Transfer Protocol).

Instead to use **Target Location** url editor, you can use the native desktop url selector pressing **Select Export Location**. A dialog as below must appear where you can see the discovered remote devices selecting the network section:

.. figure:: images/export_remote_url_selector.webp
    :alt:
    :align: center

    The Export to Remote Computer Url Selector Dialog Under Linux.

.. note::

    The native url selector dialog is only available if you turn on the right option from the **Misc/Appearance** section of the :ref:`configuration panel <appearance_settings>`.

By default, the tool proposes to export the currently selected items from the icon-view. The **+** Photos button can be used to append more items on the list.

When you select right target to upload files, press **Start Export** button to process files. You can abort operation pressing **Close** button.
