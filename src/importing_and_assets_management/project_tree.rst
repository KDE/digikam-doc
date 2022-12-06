.. meta::
   :description: How to work with the project bin in Kdenlive video editor
   :keywords: KDE, Kdenlive, project bin, working, documentation, user manual, video editor, open source, free, learn, easy


.. metadata-placeholder

   :authors: - Annew (https://userbase.kde.org/User:Annew)
             - Claus Christensen
             - Yuri Chornoivan
             - Ttguy (https://userbase.kde.org/User:Ttguy)
             - Bushuev (https://userbase.kde.org/User:Bushuev)
             - Jack (https://userbase.kde.org/User:Jack)
             - Roger (https://userbase.kde.org/User:Roger)
             - Carl Schwan <carl@carlschwan.eu>
             - Eugen Mohr
             - Smolyaninov (https://userbase.kde.org/User:Smolyaninov)
             - Tenzen (https://userbase.kde.org/User:Tenzen)

   :license: Creative Commons License SA 4.0

.. _project_tree:

The Project Bin
===============

.. contents::

The Project Bin is a view in Kdenlive which lists all the clips that are associated with the project. In earlier versions of Kdenlive this view was known as the Project Bin.  In addition to the new name, versions 15.04 and higher introduced two new options to the view's toolbar. The list following the example describes the options represented by the icons on the toolbar (identified by the numbers in the screenshots).


.. figure:: /images/Kdenlive_Project_bin_17_04.png
   :alt: Kdenlive_Project_bin_17_04
  
   20.04+


**1, 10**. Opens the Project Folder in a window for selecting video and audio clips to be added to the bin (1). Or double click on free space (10).  


**2, 10**. Displays a drop down list for adding other clip types to the Project Bin (2). Or right-click on free space (10). 


.. figure:: /images/Kdenlive_Add_other_clip_types.png
   :align: left
   :alt: Kdenlive_Add_other_clip_types
  
   Options from Menu under Icon 2


* :ref:`Add Clip or Folder <add_clip>`


* :ref:`Add Color Clip <add_color_clip>`


* :ref:`Add Image Clip <add_slideshow_clip>`


* :ref:`Add Title Clip <titles>`


* :ref:`Add Template Title Clip <titles>`


* :ref:`Create Animation... <add_animation>` (*new in version 22.08*)
   

* :ref:`online_resources`


* :ref:`generators`

.. rst-class:: clear-both

**3, 10**. Allows you to add folders to the Project Bin (3). Or right-click on free space (10) and select :guilabel:`Create Folder` to add folder. These are not actual file system folders but virtual folders to help you organize large Project Bins. See :ref:`create_folder`


**4**. Deletes the selected clip from the Project Bin (but not from the file system).


**5** Color tagging.

.. versionadded:: 20.04.0

.. figure:: /images/tags.gif
   :width: 350px
   :alt: tags
   
   Menu under Icon 5

Edit tags: double click a tag for changing the description.

.. versionadded:: 22.08

.. figure:: /images/tags_change.png
   :width: 350px
   :alt: changing tags

You can: add, delete and reordering tags.

Reordering tags: grab a tag and drag it to the desired place in the list.

**6**. Brings up additional options shown below for customizing the Project Bin view .


.. figure:: /images/kdenlive_project_bin2.png
   :width: 350px
   :alt: kdenlive_project_bin2
   
   Menu under Icon 6
 

**7** Filter by tags and stars


.. figure:: /images/filter.gif
   :width: 350px
   :alt: filter
   
   Menu under Icon 7


 
Filtering by clip type


.. figure:: /images/filter-by-type.png
   :width: 350px
   :alt: filter-by-type
  
   Menu under Icon 7


**8**. A search box to display all the clips in the bin whose filenames or titles contain the entered text.


**9**.  Number of times this clip is used in the project timeline


Clips can be dragged from the Project Bin to the :ref:`timeline`.

.. rst-class:: clear-both

.. _multibin:

Create additional project bins
------------------------------

.. versionadded:: 21.12

.. image:: /images/multibin.gif
   :alt: multibin 

You can create various bins from :ref:`folders <create_folder>` you have created. Right-click the folder name and choose :guilabel:`Open in new bin` 

Closing the extra bins either by pressing :kbd:`CTRL + w` or on the bin you want to close click on |application-menu| and choose :guilabel:`Close` .

.. _clip_right-click:

Clip - Right-Click Menu
-----------------------

The images below show the menu items available when you right-click a clip in the Project Bin.


.. image:: /images/Kdenlive_Project_bin_right_click_menu.png
   :width: 300px
   :alt: Kdenlive_Project_bin_right_click_menu


The menu items which appear when you right-click on an item in the Project Bin are also available from the :ref:`clip_menu`.

* :ref:`extract_audio`

* :ref:`transcode`

* :menuselection:`Clip Jobs`

   * :ref:`stabilize`

   * :ref:`automaticscenesplit`

   * :ref:`duplicate_clip_with_speed_change`

* :ref:`clip_in_timeline`

* :ref:`locate_clip`

* :ref:`reload_clip`

* :ref:`replace_clip`

* :ref:`duplicate_clip`

* :ref:`clips`

* :ref:`clips`

* :ref:`edit_clip`

* :ref:`rename_clip`

* :ref:`delete_clip`

If you want to reverse a clip you can do it via  :ref:`speed` or by :ref:`duplicate_clip_with_speed_change`
