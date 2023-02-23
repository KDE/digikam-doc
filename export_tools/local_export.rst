.. meta::
   :description: digiKam Export to Local Computer
   :keywords: digiKam, documentation, user manual, photo management, open source, free, learn, easy, local, computer, export

.. metadata-placeholder

   :authors: - digiKam Team

   :license: see Credits and License page for details (https://docs.digikam.org/en/credits_license.html)

.. _local_export:

Export To Local Computer
=========================

.. contents::

This tool allows to copy files from your collections to another place on your computer. File properties can be changed if desired. It available from the :menuselection:`Export --> Export to local storage` :kbd:`Ctrl+Alt+Shift+L` menu entry or the corresponding icon from the **Tools** tab in Right Sidebar.

.. figure:: images/export_local_dialog.webp
    :alt:
    :align: center

    The Export to Local Computer Dialog

The **Target location** text field allows to set the target path where file will be copied. The **Browse** button will show a file selection dialog to navigate on your computer folder hierarchy and help to select the right directory.

The **Target file behavior** options allow to choose the action to perform with files:

    - **Copy files** will duplicates data at the target place.
    - **Create symlinks** will link original data at the target place to prevent data duplication using absolute `symbolic links <https://en.wikipedia.org/wiki/Symbolic_link>`_.
    - **Create relative symlinks** will link original data at the target place to prevent data duplication using relative symbolic links.
    - **Include the sidecars of the items** will copy sidecar files if any.
    - **Overwrite existing items in the target** will overwrite target files if they are already present.
    - **Use the album path of the items in the target** will rename target files using original album path as template name.

Below is shown the list of files taken from the collections and to process. By default, the tool proposes to export the currently selected items from the icon-view. The **+** Photos button can be used to append more items on the list.

The **Adjust image properties** check-box allows to enable a set of options to convert files to another **Image format** (JPEG, or PNG). The photos will be resized before copying to the target. The values will be read from the **Image quality** and **Image length** settings, which can be used to adjust the maximum height and the compression. The width calculation will be done so as to have the aspect ratio conserved.

Finally, with the **Remove all metadata** you can drop Exif, Iptc, and Xmp chunk from the images.
