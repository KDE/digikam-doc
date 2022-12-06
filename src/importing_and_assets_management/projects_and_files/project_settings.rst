.. meta::
   :description: How to setup your project in Kdenlive video editor
   :keywords: KDE, Kdenlive, project, setup, settings, documentation, user manual, video editor, open source, free, learn, easy

.. metadata-placeholder

   :authors: - Annew (https://userbase.kde.org/User:Annew)
             - Claus Christensen
             - Yuri Chornoivan
             - Jean-Baptiste Mardelle <jb@kdenlive.org>
             - Ttguy (https://userbase.kde.org/User:Ttguy)
             - Vincent Pinon <vpinon@kde.org>
             - Jack (https://userbase.kde.org/User:Jack)
             - Tenzen (https://userbase.kde.org/User:Tenzen)

   :license: Creative Commons License SA 4.0

.. _project_settings:

Project Settings Dialog
=======================

.. contents::


This is reached via  :menuselection:`Project Settings` in the :ref:`project_menu` menu. This dialog has 3 Tabs.


Project Settings Tab
--------------------

.. image:: /images/kdenlive_project_settings01.png
  :width: 300px
  :align: left
  :alt: Project Settings dialog

The Project Settings dialog is shown when you start a new project (:menuselection:`File --> New`). This allows you to set all basic properties for your project. You can also edit the properties of your current :ref:`project_menu` in :menuselection:`Project --> Project Settings`.

.. rst-class:: clear-both

Project Folder
~~~~~~~~~~~~~~

As recommended in the :ref:`quickstart` section, you should create a new folder for your project. This folder will hold all temporary files that are used during the editing of your project (thumbnails, proxy clips, etc).


Video Profile
~~~~~~~~~~~~~

The video profile will define the format of your project. A list of predefined formats is available in **Kdenlive**, for example *DV / DVD PAL*, *HD 1080i 25 fps*, etc. 


You can use the pull-down menus to filter the list of profiles by FPS (Frames per second) or Scanning (Interlaced or Progressive)


The profile defines the video resolution, as well as display aspect ratio, color space and a few other parameters.


You should carefully choose your project format and select the one which best fits your desired output. All video operations on the project (like compositing, scaling, etc) will then use this profile. Advanced users can create custom project profiles in  :ref:`manage_project_profiles`.


For example, if your goal is to create a DVD, you should use a DVD profile with the correct frame rate (PAL / NTSC) and display ratio (widescreen or not).


Tracks
~~~~~~

You can select the default number of audio and video tracks that your project will have. You can always add or remove tracks in an existing project.


Thumbnails
~~~~~~~~~~

The Audio and Video thumbnails are shown in the :ref:`timeline`. They can also be enabled/disabled through buttons in the :ref:`status_bar`.

.. _proxy_clips_tab:

Proxy Clips Tab
~~~~~~~~~~~~~~~

.. image:: /images/20210508-kdenlive-proxy_clip.png
  :align: center
  :alt: Proxy Clips dialog


When the :menuselection:`Proxy Clip` feature is enabled, **Kdenlive** will automatically create reduced versions of your source clips, and use these versions for your editing. **Kdenlive** will replace the proxy clips with the originals for a full resolution when rendering.

The :menuselection:`Generate for videos larger than x pixels` option will automatically create proxy clips for all videos added to the project that have a frame width larger than x. This also applies to images.

You also have the choice to manually enable / disable proxy clips for each clip in your project bin by right-clicking on the clip and choosing :menuselection:`Proxy Clip`.

You can choose an *Encoding profile* for the proxy clips, which will define the size, codecs and bitrate used when creating a proxy. The proxy profiles can be managed from the **Kdenlive** Settings dialog (:menuselection:`Settings --> Configure Kdenlive --> Project Defaults`).


Metadata Tab
------------

Screenshots below show the **Metadata** tab of **Kdenlive**.


Metadata set up here will be written to the files rendered from the project if :ref:`render` is checked in File Rendering.

.. image:: /images/Kdenlive_Metadata2.png
   :alt: Kdenlive Metadata Dialog

Project Files Tab
-----------------

.. image:: /images/Kdenlive_Project_settings_Project_Files_tab.png
   :alt: Kdenlive_Project_settings_Project_Files_tab


From here you can export the project files data.


If you want to remove unused files from your project use Project >  :ref:`clean_project`.


Cache Data Tab
--------------

.. image:: /images/20210508-kdenlive-cache_data.png
   :align: center
   :alt: Cache data dialog


The Cache data tab shows the data used in the project including the timeline preview, proxy clips, audio thumbnails, and video thumbnails.  


You can click on the trashcan icon to clear the cache data for that category.
