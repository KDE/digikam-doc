.. metadata-placeholder

   :authors: - Yuri Chornoivan
             - Ttguy (https://userbase.kde.org/User:Ttguy)
             - Jack (https://userbase.kde.org/User:Jack)
             - Carl Schwan <carl@carlschwan.eu>

   :license: Creative Commons License SA 4.0


.. _transcode:

Transcode Menu Item
===================

.. contents::

From right-click on a clip in :ref:`project_tree`, one of the items that appears in the menu is the :menuselection:`Transcode` submenu.

.. image:: /images/Transcode_menu_item.png

Choose a transcode profile from the available list to transcode the selected clip into a different video format. The options are controlled by :ref:`configure_kdenlive`. The transcoding is done by the `ffmpeg <http://www.ffmpeg.org/>`_ program.

.. image:: /images/Kdenlive_Transcode_dialog.png

The above screenshot is the dialog presented after choosing a transcode profile for transcoding the clip. The wrench icon toggles the display of the details of the command that will be used for transcoding. The description comes from the description supplied in the :ref:`configure_kdenlive` for this functionality.

Use the checkbox to cause the transcoded clip to be added to the Project Bin once the transcode job has finished.

While the transcode job is running, the Project Bin will display a progress bar on the thumbnail of the clip and a job list menu item will appear at the top of the Project Bin.

.. image:: /images/Proxy_clip_creation.png
