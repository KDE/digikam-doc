.. meta::
   :description: Edit clip in Kdenlive video editor
   :keywords: KDE, Kdenlive, edit clip, animation, color clip, image, editing, timeline, documentation, user manual, video editor, open source, free, learn, easy


.. metadata-placeholder

   :authors: - Claus Christensen
             - Yuri Chornoivan
             - Ttguy (https://userbase.kde.org/User:Ttguy)
             - Bushuev (https://userbase.kde.org/User:Bushuev)
             - Jack (https://userbase.kde.org/User:Jack)
             - Roger (https://userbase.kde.org/User:Roger)
             - Carl Schwan <carl@carlschwan.eu>
             - Eugen Mohr

   :license: Creative Commons License SA 4.0


.. _edit_clip:

Edit Clip
=========

.. contents::

This option is available from :ref:`clip_menu` or by right-click on the clip in the :ref:`project bin <clip_right-click>` for following clip types:

- audio

- image

- animation (*new in version 22.08*) 

It opens the clip in an external software specified in :ref:`default_apps` (:menuselection:`Settings --> Configure Kdenlive... --> Environment page --> Default Apps tab`) ready for editing. 

If the path is not set a pop-up window appears to define the path to the external software on your computer:

.. image:: /images/Kdenlive_missing_Glaxnimate-path.png
   :alt: Kdenlive_missing_application-path

Once the path is set the application starts and opens the clip you like. The entered path gets added automatically in :ref:`default_apps`.

More details for installing the external software and how to set the path see :ref:`default_apps`.

.. hint::

   The option is greyed out for video clips because **Kdenlive** is the video editor - only audio, image and animation clips are edited by external software.