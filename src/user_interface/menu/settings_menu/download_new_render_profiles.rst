.. metadata-placeholder

   :authors: - Claus Christensen
             - Yuri Chornoivan
             - Ttguy (https://userbase.kde.org/User:Ttguy)
             - Bushuev (https://userbase.kde.org/User:Bushuev)
             - Jack (https://userbase.kde.org/User:Jack)
             - Roger (https://userbase.kde.org/User:Roger)

   :license: Creative Commons License SA 4.0

.. _download_new_render_profiles:

Download New Render Profiles
============================

.. contents::


This feature allows you to download new render profiles that have been shared by the community. These will then appear as options in the :ref:`render` window.


.. image:: /images/user_interface/menu/knewstuff_render_dialog_22-04.png


The new render profile installed above shows up in the Web Sites category under Custom.  


.. image:: /images/Kdenlive_Installed_render_profiles.png


.. note::

  It has the big red cross because the render profile is in need of an audio codec not installed on this machine


The installed files are placed in :file:`/usr/share/mlt/presets/consumer/avformat`


Upload/Share Render Profiles
============================

If you want to share a render profile you can do so at the `KDE Store page <https://store.kde.org/browse?cat=334>`_. You need to create a login, then you can upload your custom rendering profile file, which is on Linux stored in :file:`.local/share/kdenlive/export/customprofiles.xml` and on Windows stored in :file:`%LocalAppData%\kdenlive\export\customprofiles.xml`. The file contains all your custom rendering profiles so you should copy it and remove the ones you don't want to export.

Profiles submitted there appear in the *Download New Render Profiles*.


