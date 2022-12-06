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


.. _online_resources:

Online Resources
================

.. contents::

Available from the :ref:`project_menu` menu and the :ref:`clips` dropdown,  this feature allows you to search online audio, video and graphics libraries for resources to download.

.. image:: /images/Kdenlive_Search_Online_services.png
   :align: left
   :alt: Kdenlive_Search_Online_services

.. rst-class:: clear-both

.. versionadded:: 21.04.0

The new online resources window features more source footage providers such as `Pixabay <https://pixabay.com/>`_ and `Pexels <https://www.pexels.com/>`_ besides the already available `Freesound <https://freesound.org/>`_ and `Internet Archive <https://archive.org/>`_. Other possible providers are being considered, see `here <https://invent.kde.org/multimedia/kdenlive/-/issues/918>`_ for more details.

.. image:: /images/Online-resources-widget.gif
   :align: left
   :alt: online-resources-widget

It is important to give credit to the downloaded sources so we’ve added an option to directly import the license attribution as a project note.

.. image:: /images/copyright.png
   :align: left
   :alt: copyright

.. image:: /images/license-text-notes.png
   :align: left
   :alt: license-text-notes


Freesound Audio Library
-----------------------

The Freesound Audio Library part of this became non-functional on old versions of Kdenlive in October 2015 because freesound now requires user registration. If you are using an old version of Kdenlive, you can still download great audio clips from `https://www.freesound.org/ <https://www.freesound.org/>`_ – just not through the Kdenlive interface.

.. image:: /images/Kdenlive_Search_online_resources2.png
   :align: left
   :alt: Kdenlive_Search_online_resources2

Version 15.12 (December 2015) allowed users to automatically download the high-quality .mp3 preview file from freesound using the **Online Resources** module.


.. rst-class:: clear-both

Freesound Audio Library - Future version
----------------------------------------

A future version of Kdenlive will allow you to authenticate Kdenlive with your free freesound web account and download the high-quality files.

If the **Online Resources** dialog offers up this error,
Error Getting Access Token from Freesound.
Try importing again to obtain a new freesound connection
hit the import button again to make it try to establish a new authentication handshake with the freesound website.

On hitting the import button, and if this is the first time you have used the freesound library, you will be presented with a login dialog where you can use your freesound account credentials to authenticate and download the highest-quality version of the audio file. If you do not have a freesound account, you can choose to download the high-quality .mp3 preview version of the file instead.

.. image:: /images/Kdenlive_freesound1.png
   :align: left
   :alt: Kdenlive_freesound1

It might take a few seconds for the freesound web page to load in the window – be patient.

Once you have logged into the freesound system, you must grant Kdenlive permission to access your freesound account.

.. image:: /images/Kdenlive_freesound2.png
   :align: left
   :alt: Kdenlive_freesound2

.. container:: clear-both

    You can revoke Kdenlive's access to your freesound account from the freesound website. Log in to your account and click the link in the App permissions section on the settings page "Manage your list of permissions granted to API applications"
    http://freesound.org/home/app_permissions/.

Once permission is granted, Kdenlive obtains authentication keys that it saves to the kdenlive config file (:file:`/~/.config/kdenliverc`). It uses these keys to automatically authenticate on future file import requests. Delete the tokens from the kdenlive config file to prevent this.


Archive Org Video Library
-------------------------

This searches the internet archives video library for video files that you can import into Kdenlive.
Animated .gifs are displayed as video previews


Open Clip Art Graphic Library
-----------------------------

This searches the Open Clip Art library for clip art that can be imported into Kdenlive
