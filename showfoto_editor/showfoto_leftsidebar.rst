.. meta::
   :description: Overview to Showfoto Left Sidebar
   :keywords: digiKam, documentation, user manual, photo management, open source, free, learn, easy, image, editor, showfoto, left, sidebar, folders, stack, bookmark, favorite

.. metadata-placeholder

   :authors: - digiKam Team

   :license: see Credits and License page for details (https://docs.digikam.org/en/credits_license.html)

.. _showfoto_leftsidebar:

Left Sidebar
============

.. contents::

Left sidebar is the main difference in Showfoto user interface compared to digiKam Image Editor. As Showfoto does not provide advanced functionalities about Digital Asset Management as digiKam, at least **Folders** and **Stack** give to the user the essential capabilities to explore, reference, and access quickly to the preferred contents from the computer. All the settings adjusted in left sidebar are saved and restored between Showfoto sessions.

.. _showfoto_folderstab:

Folders Tab
-----------

The **Folders** tab is a complete view to handle your system directory hierarchies, as a desktop file-manager.

.. figure:: images/showfoto_folders_tab.webp
    :alt:
    :align: center

    The Showfoto Stand-Alone Editor Folders Tab from Left Sidebar

It divided in three views from the top to the bottom:

    - The **Navigation settings** view providing:

        - A **tools-bar** on the top to navigate on the directories hierarchies, return to your personal folder, adjust the thumbnails size, and two buttons to access to advanced settings and manage the current folder contents with the **Stack** and Slideshow tools.

        - An editable combo-box showing the **current directory path** and the history of previous places visited from this tab.

        - A combo-box where you can apply a **type-mime filter** to restrict the thumbnails list to the desired file formats.

    - The **Thumbnails list** where you can show the image files properties from the current selected folder set in directory combo-box behind. With the tools-bar on the top and with the context menu, you can adjust the flat list settings and assign content to the **Places** or to the **Stack**. Double clicking on a item from the list load the contents to the canvas.

    .. figure:: images/showfoto_places_view.webp
        :alt:
        :align: center

        The Showfoto Places and Bookmarks View

    - The preferred **Bookmarks** and **Usual Places**. This view is optional and can be disabled in the settings available from thumbnails list context menu or in tools-bar on the top. **Bookmarks** references your preferred places that you can register when navigating on the folder hierarchies. **Bookmark** properties includes a **Path**, an **Icon**, and a **Title**. These properties can be modified later as you wish. The **Usual Places** is a read-only group to give a quick access to the standard folders from your personal directory.

    .. figure:: images/showfoto_new_bookmark.webp
        :alt:
        :align: center

        The Showfoto Dialog to Register a New Bookmark

.. note::

    The layout between the **Thumbnails list** and the **Places view** can be adjusted vertically with the splitter adjustment.

.. _showfoto_stacktab:

Stack Tab
---------

The **Stack** tab is a helper view to catalog your preferred pictures grouped in a same container. Pictures can be hosted in different folders if necessary. This give a quick access to your best contents that you can slide or share easily.

.. figure:: images/showfoto_stack_tab.webp
    :alt:
    :align: center

    The Showfoto Stand-Alone Editor Stack Tab from Left Sidebar

It divided in two views from the top to the bottom:

    - The **Thumbnails list** showing the current stack contents. You can access to the lead features from this view by the context menu available by a right click button of the mouse. Stack contents can be tuned with this context menu, or from the **Folders** tab. When you are agreed with the stacked items on the list, you can register the container as a **Favorite**.

    .. figure:: images/showfoto_favorites_view.webp
        :alt:
        :align: center

        The Showfoto Favorites View

    - The **Favorites** tree-view is a list of the preferred stacks classified using a hierarchy (similar than Tags in digiKam). This hierarchy can host nested **Favorite folders** to host your stacks (**Favorite item**). You can edit stack properties which includes **Name**, **Type**, **Description**, **Creation Date**, **Icon**, and the list of **Stacked items**. Double clicking on a item from the hierarchy plugs the stack contents to the thumbnails list on the top. If any, the last opened file from the stack is loaded in the canvas else the first from the list.

    .. figure:: images/showfoto_edit_favorite.webp
        :alt:
        :align: center

        The Showfoto Dialog to Edit Favorite Properties

.. note::

    The layout between the **Thumbnails list** and the **Favorites view** can be adjusted vertically with the splitter adjustment.
