.. metadata-placeholder

   :authors: - Annew (https://userbase.kde.org/User:Annew)
             - Claus Christensen
             - Yuri Chornoivan
             - Gallaecio (https://userbase.kde.org/User:Gallaecio)
             - Simon Eugster <simon.eu@gmail.com>
             - Jean-Baptiste Mardelle <jb@kdenlive.org>
             - Ttguy (https://userbase.kde.org/User:Ttguy)
             - Bushuev (https://userbase.kde.org/User:Bushuev)
             - Jack (https://userbase.kde.org/User:Jack)
             - Roger (https://userbase.kde.org/User:Roger)
             - Carl Schwan <carl@carlschwan.eu>
             - Eugen Mohr

   :license: Creative Commons License SA 4.0


.. _projects_and_files:

Project and File management
===========================

.. TODO: Project profile vs. Render profile: What is the difference, how to choose correctly?



.. contents::


File Structure
--------------

As already pointed out in the :ref:`quickstart`, we suggest using a different project folder for each project. **Kdenlive** will generate the following folders for caching in the project folder:


* :file:`/proxy/` for the :ref:`clips` that have been generated

* :file:`/thumbs/` for thumbnails to all used clips

* :file:`/titles/` default location for the :ref:`titles` saved outside the project file

* :file:`/.backup/` for your project's automatic :ref:`backup` These directories can be deleted if not required anymore (for example for saving space on the harddrive). **Kdenlive** will create them again when you load the project the next time.


.. warning::

  The :file:`/titles/` directory is the default directory for saved :file:`.kdenlivetitle` title files. Make sure that you did not save any important files in there before deleting it.

Source clips can be located anywhere. Still, here are some thoughts about their location:


* Material (images, clips, audio) that is used for one project only can be put into a subdirectory of the project folder as well. This keeps all important files together, and searching for the files takes less time.


* Material that is used by multiple projects is convenient when kept together. I’ve got a video collection the same way that I have a photo collection.

.. toctree::
   :caption: Contents:
   :glob:
   :maxdepth: 1

   projects_and_files/*
