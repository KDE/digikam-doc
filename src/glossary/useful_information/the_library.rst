.. metadata-placeholder

   :authors: - TheDiveO
             - Eugen Mohr
             
   :license: Creative Commons License SA 4.0

.. moved from https://kdenlive.org/en/project/the-library-copy-paste-between-projects/

.. _the_library:

The library: copy paste between projects
========================================

.. versionadded:: 16.12.0

The **Library** is Kdenlive’s way to copy and paste sets of clips and transitions between different projects. As its name already hints at: it is not just a clipboard, but instead it is a library for all the things you in more than a single project. The Library came to life around Kdenlive 15.04 or so. Let’s right dive into **how to use the library** in your daily Kdenlive workflow!

Step 1: Copy Stuff to Your Library
----------------------------------

.. container:: clear-both

   .. image:: /images/library-pane.png
      :align: left
      :alt: library-pane
      :width: 350px

   The **Library** is Kdenlive’s central place **for copying and pasting between projects**.

   If you don’t see yet the library pane, make sure to display using :menuselection:`View --> Library`.

.. attention::

   The library should look slightly familiar, as it looks similar to the project bin. However, while the project bin changes with each project, the library is independent of your projects. It’s always the same library, there’s only one of it.

.. tip::

   A quite useful Kdenlive window layout is to group the library together with the project bin, and optionally the project notes. This way, you don’t need extra screen space for the library, yet it is no further away than just a single click.
 
.. container:: clear-both

   .. image:: /images/library-timeline-select-clips-transitions.png
      :align: left
      :alt: library-timeline-select-clips-transitions
      :width: 350px

   Next, **select** some **timeline clips (together with their effects), as well as transitions, in the timeline**. You can load an existing project and select some timeline clips and transitions at any time in order to copy it into your library. There is no separate import. Simply load a project or create a new one. 

.. container:: clear-both

   .. image:: /images/library-bookmark.png
      :align: left
      :alt: library-bookmark
      :width: 350px

   Switch to the library pane, if you haven’t yet done so. Then press **the bookmark** button (Add Timeline Selection to Library), which is located at the bottom of the library pane. It’s the third button from the left.

.. container:: clear-both

   .. image:: /images/library-bookmark-save.png
      :align: left
      :alt: library-bookmark-save.png
      :width: 350px

   Kdenlive now asks you to **name your new library item**. Give it some name, and click :guilabel:`OK` to copy the selected timeline clips (with effects) and transitions into your library.

   **Please note**: at this time, the names of library item need to be valid filenames.

.. container:: clear-both

   .. image:: /images/library-folder.png
      :align: left
      :alt: library-folder
      :width: 350px

   Of course, you can even **neatly organize** your library items **into folders**, and subfolders. This is similar to what you may have come to known from Kdenlive’s (project) bin, where you also can use folders to organize your project (source) clips.

   Use the :guilabel:`Add Folder` button at the bottom of the library to create a new folder. You can rearrange library items and folders at any time by simple dragging them into their new place.

.. rst-class:: clear-both

Step 2: Paste Library Item into (New) Project
---------------------------------------------

.. container:: clear-both

   .. image:: /images/library-add-clip-to-bin.png
      :align: left
      :alt: library-add-clip-to-bin
      :width: 350px

   Now switch to another Kdenlive project by loading it, or alternatively start with a fresh project from scratch. Next, go to the library pane and **select the library item** you want to paste into your project. Then, press the :guilabel:`Add Clip to Project` button (up to Kdenlive 16.08.1 this is instead the :guilabel:`+` button, located in the same place).

.. container:: clear-both

   .. image:: /images/library-bin-with-library-clip.png
      :align: left
      :alt: library-bin-with-library-clip
      :width: 350px

   Your project bin now contains the new library item you’ve just added.

   You can rename library items at any time: :menuselection:`right click --> Rename Library Clip`.

.. rst-class:: clear-both

Step 3: Drag Library Item into Timeline
---------------------------------------

.. container:: clear-both

   .. image:: /images/library-clip-in-timeline.png
      :align: left
      :alt: library-clip-in-timeline
      :width: 350px

   The selected library item has now been added to your (project) bin. You’ll see this by switching to the (project) bin pane. You still have only a **single (library) clip** at this stage. You can now drag it into the timeline, wherever you want.

   **Please note**: you cannot directly drag a library item from the library into your timeline. You always need to add it to your project bin first.

.. rst-class:: clear-both

Step 4: Expand Library Clip
---------------------------

.. container:: clear-both

   .. image:: /images/library-expand-clip.png
      :align: left
      :alt: library-expand-clip
      :width: 350px

   Often, you next want to edit the contents of a library clip after you’ve placed it on the timeline. Expanding means that you want to break up a library clip into its contents for further editing. So, simply **select the library clip** in the timeline. Then choose :menuselection:`Timeline --> Current Clip --> Expand Clip`.

.. container:: clear-both

   .. image:: /images/library-expanded-clip.png
      :align: left
      :alt: library-expanded-clip
      :width: 350px

   **Done!** You can now edit the expanded contents as you would edit any other timeline content.

.. container:: clear-both

   .. image:: /images/library-remove-lib-clip-from-bin.png
      :align: left
      :alt: library-remove-lib-clip-from-bin
      :width: 350px

   Kdenlive has expanded all the clips inside the library item into its own bin folder. This bin folder has the same name as the library clip, but without the .mlt extension.

   After successful expansion, you may now **remove the original library clip from your bin**. It’s not needed anymore (as you can also tell from the missing reference count).

.. rst-class:: clear-both

Clip Expansion Details
----------------------

.. container:: clear-both

   .. image:: /images/library-expanded-up.png
      :align: left
      :alt: library-expanded-up
      :width: 350px

   Before Kdenlive 16.12.0, library clips will be expanded **from the bottom up**; which may be counter-intuitive (depending on your point of view). Here, bottom up means that in case a library clip contains multiple tracks, then you need to place the library on a lower track so there is room above for the clip to expand.

.. container:: clear-both

   .. image:: /images/library-expanded-down.png 
      :align: left
      :alt: library-expanded-down
      :width: 350px

   From Kdenlive 16.12.0 on, the contents of the **library clip will be expanded down** from the track where it has been placed on and below. That is, place your library on an upper track with suitable room below.

   Anyway, if there aren’t enough tracks below the library clip, yet there are enough tracks in the timeline, then Kdenlive will attempt to **shuffle the library clip up** a number of tracks, before then expanding it.

.. attention::

   In any case, to expand a library clip into its contents, you’ll always need **necessary free space in the timeline**. This means that there cannot be any clips or transitions within the start and end of the library clip on as many  adjacent tracks as to be needed when expanding a multi-track library item. Simply put: just make sure that the library item has room to expand, otherwise there can be other clips and transitions above and below the library clip, they just need to be out of the area of expansion.

.. container:: clear-both

   .. image:: /images/library-expand-below-transition.png
      :align: left
      :alt: library-expand-below-transition
      :width: 350px

   **Please note**: starting with Kdenlive 16.12.0, you can also **expand a library immediately below a transition**; that is, the library clip is on the next lower track in the timeline. This is useful for such cases where you, for instance, have a clip running the full length of your project on the topmost track and showing your company logo, channel logo, or something similar. If you then use an explicit transition added to this clip over compositing, you can still correctly expand the library clip on the second-topmost track.

.. rst-class:: clear-both

Configuring Your Library Storage Location
-----------------------------------------

.. container:: clear-both

   .. image:: /images/library-config.png
      :align: left
      :alt: library-config
      :width: 350px

   All items in your Kdenlive library are stored in a user-configurable place inside your file system. The default location, unless configured otherwise, is where your other semi-temporary caching data is stored. Typically, this is `$HOME/.cache/kdenlive/library`. Your library clips are then stored inside this directory, as well as in subdirectories in case you also use library folders.

   To change the location of your library, go to :menuselection:`Settings --> Configure Kdenlive`. Next, select the section :guilabel:`Environment`. Switch to the :guilabel:`Default folders` tab. Locate the part titled :guilabel:`Library folder`, and deselect the option :guilabel:`Use default folder`. Select or enter another location for your Kdenlive library.

.. note::
   
   Please note: Kdenlive won’t move existing library files to the new location you’ve set. You’ll need to do this manually using a file browser or from the command line.