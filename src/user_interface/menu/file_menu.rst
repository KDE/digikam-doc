.. metadata-placeholder

   :authors: - Annew (https://userbase.kde.org/User:Annew)
             - Claus Christensen
             - Yuri Chornoivan
             - Ttguy (https://userbase.kde.org/User:Ttguy)
             - Bushuev (https://userbase.kde.org/User:Bushuev)
             - Carl Schwan <carl@carlschwan.eu>
             - Jack (https://userbase.kde.org/User:Jack)

   :license: Creative Commons License SA 4.0


.. _file_menu:

File Menu
=========

.. contents::

.. _new:

New
---

Creates a new Kdenlive project. The default keyboard shortcut is :kbd:`Ctrl + N`.

See :ref:`quickstart`.

The default settings that appear on this feature are defined under :menuselection:`Settings --> Configure Kdenlive` > :ref:`configure_kdenlive`.

Open...
-------

Opens a project that has been saved in a :ref:`project` format file. The default keyboard shortcut is :kbd:`Ctrl + O`.

Open Recent
-----------

Displays a picklist of recently saved files (up to 10) to choose from. Click the :menuselection:`Clear List` choice when you want to start over with a fresh list.

Save
----

Saves the current state of the project in a :ref:`project` format file. Prompts for a file name if this is the first time the file is being saved. The default keyboard shortcut is :kbd:`Ctrl + S`.

Save As...
----------

Saves the current state of the project in a :ref:`project` format file of your choice. The default keyboard shortcut is :kbd:`Ctrl + Shift + S`.

Save Copy...
------------

Revert
------

This abandons any changes to the project you have made since last saving and reverts back to the last saved version of the project.

Transcode Clips...
------------------

.. image:: /images/Transcode.png
  :align: center
  :width: 300px


Use this to convert a video or audio clip from one codec/format to another.

Choose one source file or multiple source files and a profile that represents the desired destination codec/format. Optionally change the destination path and file name and hit :menuselection:`Start`. Otherwise, hit :menuselection:`Abort` to close the windows.

Transcoding a clip should be faster than loading the clip into the timeline and re-encoding it into a different format.

* :menuselection:`Add clip to project` controls if after the conversion, the new clip is added to the :ref:`project_tree`.

* :menuselection:`Close after encode` Uncheck this checkbox if there is the need to convert to another format after the conversion.

Close
-----

Not sure what this is supposed to do. It is always greyed out on my **Kdenlive**.

Maybe it is there ready for a version of **Kdenlive** that can have more than one project open at a time.

Quit
----

Exits **Kdenlive**. Prompts you to save any unsaved changes. The default keyboard shortcut is :kbd:`Ctrl + Q`.

.. toctree::
   :caption: Contents:
   :glob:

   file_menu/*
