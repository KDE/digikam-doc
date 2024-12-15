.. meta::
   :description: digiKam Export to Local Computer
   :keywords: digiKam, documentation, user manual, photo management, open source, free, learn, easy, local, computer, export

.. metadata-placeholder

   :authors: - digiKam Team

   :license: see Credits and License page for details (https://docs.digikam.org/en/credits_license.html)

.. _local_export:

:ref:`Export To Local Computer <export_tools>`
==============================================

This tool allows you to copy files from your collections to another place on your computer. File properties can be changed if desired. It is available from the :menuselection:`Export --> Export to local storage` :kbd:`Ctrl+Alt+Shift+L` menu entry or the corresponding icon from the **Tools** tab in the Right Sidebar.

.. figure:: images/export_local_dialog.webp
    :alt:
    :align: center

    The Export to Local Computer Dialog

The **Target location** text field sets the target path where the file will be copied. The **Browse** button will show a file selection dialog to navigate your computer's folder hierarchy and select the right directory.

The **Target file behavior** options allow you to choose the action to perform with the selected files:

    - **Copy files** will duplicate data at the target location.
    - **Create symlinks** will add links to the original data to the target location to prevent data duplication using absolute `symbolic links <https://en.wikipedia.org/wiki/Symbolic_link>`_.
    - **Create relative symlinks** will add links to the original data to the target location to prevent data duplication using relative symbolic links.
    - **Include the sidecars of the items** will copy any existing sidecar files.
    - **Overwrite existing items in the target** will overwrite target files if they are already present.
    - **Use the album path of the items in the target** will rename target files using the original album path as a template name.

A list of files from the collections to be exported is display below. By default, the tool proposes to export the currently selected items from the icon-view. The **+** Photos button can be used to append more items to the list.

The **Adjust image properties** check-box enables a set of options to convert files to another **Image format** (JPEG, or PNG). The photos will be resized before copying to the target. The **Image quality** and **Image length** settings will be used to adjust the maximum height and the compression. The width calculation will be done so as to maintain the aspect ratio.

Finally, with the **Remove all metadata** you can remove all the Exif, IPTC, and XMP metadata from the images.
