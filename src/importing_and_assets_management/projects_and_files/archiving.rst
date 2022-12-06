.. meta::
   :description: The Kdenlive User Manual
   :keywords: KDE, Kdenlive, documentation, user manual, video editor, open source, free, help, archive, archiving

.. metadata-placeholder

   :authors: - Annew (https://userbase.kde.org/User:Annew)
             - Neverendingo (https://userbase.kde.org/User:Neverendingo)
             - Claus Christensen
             - Yuri Chornoivan
             - Jean-Baptiste Mardelle <jb@kdenlive.org>
             - Ttguy (https://userbase.kde.org/User:Ttguy)
             - Tenzen (https://userbase.kde.org/User:Tenzen)

   :license: Creative Commons License SA 4.0

.. _archiving:

Archiving
=========

.. image:: /images/Archive.png
   :align: left
   :alt: Archive

The Archiving feature (:menuselection:`Project --> Archive Project`, see :ref:`project_menu`) in **Kdenlive** allows you to copy all files required by the project (images, video clips, project files,...) to a folder, and alternatively to compress the whole into a tar.gz or a zip file.

Archiving changes the project file to update the path of video clips to the archived versions.

This can be useful if you finished working on a project and want to keep a copy of it, or if you want to move a project from one computer to another.

.. container:: clear-both

   .. image:: /images/Kdenlive_Arcive_Open.png
      :align: left
      :alt: Kdenlive Arcive Open

   The resulting tar.gz or zip file can be opened directly in **Kdenlive** with :menuselection:`File --> Open`, then switch file ending to :guilabel:`Archived Project`.

.. container:: clear-both

   .. image:: /images/Kdenlive_Open_Archived_Project.png
      :align: left
      :alt: Kdenlive Open Archived Project

   Kdenlive will uncompress it to a location you specify before opening it.

.. container:: clear-both

   .. image:: /images/Kdenlive_Missing_Clips.png
      :align: left
      :width: 350px
      :alt: Kdenlive Missing Clips

   If you have archived the project with the option :guilabel:`Archive only timeline clips`, **Kdenlive** ask what it should do with the not archived clips.
