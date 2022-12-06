.. metadata-placeholder

   :authors: - Annew (https://userbase.kde.org/User:Annew)
             - Claus Christensen
             - Yuri Chornoivan
             - Ttguy (https://userbase.kde.org/User:Ttguy)
             - Vincent Pinon <vpinon@kde.org>
             - Bushuev (https://userbase.kde.org/User:Bushuev)
             - Jack (https://userbase.kde.org/User:Jack)
             - Roger (https://userbase.kde.org/User:Roger)
             - Carl Schwan <carl@carlschwan.eu>
             - Eugen Mohr

   :license: Creative Commons License SA 4.0

.. _titles:

Titles
======

.. contents::

Titles are text elements that can be added to the timeline and appear over the top of other clips. Titles are created in the :ref:`project_tree` and then dragged to the timeline like other video clips.

If you want titles to overlay other footage, you put title clips above (on video track 2 for example) and have the other footage below (on video track 1 for example). You also need to retain the affine transition that is automatically added to the title clips if you want the footage visible underneath.

Create and Edit Title
---------------------

.. image:: /images/title_window.png
   :width: 600px
   :alt: Title window

**Create a Title:** Choose :menuselection:`Project --> Add Title Clip` or right-click in an empty area in :ref:`project_tree` and choose :menuselection:`Add Title Clip`.

**Edit a Title:** Double click the title clip either in the project bin or in the timeline. Or right-click the title clip in the project bin and select :menuselection:`Edit Clip`.

**In the title window (1):**

   Select an item by clicking on it.

   Edit text by double-clicking.

Once your edit is done click :guilabel:`Update Title` (bottom right).

Add Items
~~~~~~~~~

.. image:: /images/title_toolbar.png
   :alt: titler toolbar

From the toolbar (green marked area) choose:

:guilabel:`Text` :kbd:`Alt+T` and click into the title window (1)

:guilabel:`Rectangle` :kbd:`Alt+R` and in the title window (1) drag the mouse to draw a rectangle

:guilabel:`Ellipse` :kbd:`Alt+E` and in the title window (1) drag the mouse to draw a ellipse.

:guilabel:`Image` :kbd:`Alt+I` brings up a file chooser where you can choose an image to be inserted into your title (1).   

Default selection is :guilabel:`Text` for a new title clip.

:kbd:`Alt + S` brings you back to :menuselection:`Selection Tool` (icon with the 4 arrows, yellow marked)

.. image:: /images/title_level.png
   :alt: Title level

Items can be placed behind each other by selecting them and changing the :guilabel:`Z-index:` (top right corner) to a lower value or with the 4 icons left to the :guilabel:`Z-index`  


Select Items
~~~~~~~~~~~~

.. image:: /images/title_selection.png
   :alt: Title selection

Yellow marked area. Make sure :guilabel:`Selection Tool` is selected or press :kbd:`Alt + S`. 

In the title window (1) clicking on an item.

Holding :kbd:`Shift` to select several items by clicking on it.

:kbd:`Ctrl + A` selects all items.

.. image:: /images/title_item-selection.png
   :alt: Title item selection

You can select items with one of the 5 selection possibilities (yellow marked area, bottom left), from left to right:

1. If you have a selection: Keep only images selected
2. If you have a selection: Keep only text items selected
3. Deselect everything
4. Select All
5. If you have a selection: Keep only rect items selected

.. _adjust_items:

Adjust Items
~~~~~~~~~~~~

.. image:: /images/title_adjust-items.png
   :width: 500px
   :alt: titler toolbar

Red marked areas: All items can be adjusted in position, size, level, alignment and properties either with the mouse or by entering values.

Holding :kbd:`Shift` move selected items vertical only.

Holding :kbd:`Shift + Alt` move selected items horizontally only.

Once done click :guilabel:`Create Title` (bottom right) or :guilabel:`Update Title`.  


.. _typewriter:

Typewriter
----------

.. versionadded:: 21.04.0

.. image:: /images/title-clip-typewriter.png
   :alt: title-clip-typewriter

The beloved typewriter effect is back. By default it expands text by characters, but other modes like expansion by words and lines are also available.

- Frame step
   Tells how fast next element will be displayed. The speed is constant over the whole clip and effect period. 
   
   Values: 1-240, default: 25

- Variation / Sigma
   Allows for introducing small fluctuation to the step length.
   
   Values 0-20, default: 0

- Seed
   The random generator for fluctuations is initialized with constant seed to assure predictable pattern. The seed parameter changes the initial value of random generator.
   
   Values: 0-100, default 0

- Expansion mode
   By character: types character by character
  
   By word: types word by word
   
   By line: types line by line
   
   Custom: custom macros (not implemented)


Scroll Title Vertically
-----------------------

Put a long title onto the title window. Zoom out so you can see it all. The text should run off the top (or bottom) of the viewable area.

Select the :guilabel:`Animation` tab and check the :guilabel:`Edit start viewport` option. Now drag the start rectangle to above the viewable area.

Check the :guilabel:`Edit end viewport` option and drag the end rectangle to below the viewable area.

Press the :guilabel:`OK` button and preview the scrolled title.

.. image:: /images/Scrolling_titles.png
   :alt: Scrolling_titles

The text in the above title scrolls up the screen. It is as if the camera starts on the "start rectangle" and then pans down to the "end rectangle".

To make the text scroll faster, set the :guilabel:`Duration:` field (highlighted in red in the image above) to a smaller value. To make the text scroll slower, set it to a larger value.

Note: changing the length of the title clip on the timeline does not change the scrolling speed. If the length of the clip on the timeline is longer than the duration specified in the title editor, the titles will pause on the screen between the time the title's duration expires until the end of the clip.

If the length of the clip on the timeline is shorter than the duration specified in the title editor, the scrolling will not complete before the title clip finishes.

Note: the above description of title behaviour with respect to duration only applies to titles that don't get edited after they have been placed on the timeline. If you expand the length of a title clip on the timeline and then edit the title (by double-clicking it in the Project Bin), its apparent duration will become the length that it currently has on the timeline (i.e., the scrolling will not pause at the end anymore) but the duration displayed in the title editor will not have changed.


Scroll Title Horizontally
-------------------------

Use the instructions for vertical scrolling - just put the start and stop rectangles off to the sides of the screen rather than the top and bottom.


Save a Title
------------

.. image:: /images/title_save-as.png
   :alt: Title save as

Blue marked area: Press the :guilabel:`Save As` button on the tool bar.

**Title Editor** toolbar when title editor is wide enough for the whole toolbar to display. The toolbar items are: **Selection Tool**, **Add Text**, **Add Rectangle**, **Add Ellipse**, **Add Image**, **Open Document** and **Save As**.

or select :guilabel:`Save as` from the toolbar overflow menu which can be found under the :guilabel:`>>` button on the toolbar - see picture.

**Title Editor** toolbar when title editor is not wide enough for the whole toolbar to display. The toolbar items that do not fit can be accessed from the :guilabel:`>>` button that appears at the end of the toolbar.

Choose a save location within your project.

The titles are saved as :file:`.kdenlivetitle` type documents.


Load a Title
------------

.. image:: /images/title_open-document.png
   :alt: Title open Document

Blue marked area: Press the :guilabel:`Open Document` button on the Title Clip editor toolbar or choose :menuselection:`Open document` from the :guilabel:`>>` menu and load up a title saved earlier.


Title Template 
--------------

.. _title_template:

Built In
~~~~~~~~

.. image:: /images/Kdenlive_Template_Title1.png
   :width: 450px
   :alt: Template_title1

**Kdenlive** has some built-in title templates that can be accessed from the :guilabel:`Template:` drop-down list found on the bottom of the **Title Clip** window - see below.

.. _download_new_title_templates:

Download new title template
~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. image:: /images/Kdenlive_download_new_title_templates.png
   :alt: Toolbar showing buttons to download new title templates

Blue marked area: To install more title templates press the :guilabel:`Download New Title Templates...` icon on the tool bar when you are in the title editor.

If you have a good title template, you can post it `here <https://store.kde.org/browse/cat/335/>`_ so that other **Kdenlive** users can download it through :menuselection:`Download New Title Templates...` and use it.

.. image:: /images/Kdenlive_Download_title_templates.png
   :alt: Kdenlive_Download_title_templates

Once these title templates are installed, they can be accessed via the drop down on the :ref:`template <title_template>` dialog.

The :file:`.kdenlivetitle` files that supply these templates are installed to:

**Linux**

   :file:`$HOME/.local/share/kdenlive/titles`

**Flatpak**

   :file:`$HOME/.var/app/org.kde.kdenlive/data/kdenlive/titles`

**Windows**

   :file:`%AppData%/kdenlive/titles`

   Press :kbd:`Win + R` (:kbd:`Windows` key and :kbd:`R` key simultaneously) and copy **%AppData%/kdenlive/**.

Template Titles - User-Defined
------------------------------

*Template Titles* allow you to create a template for other titles in your project. You create the template title with the settings that all the titles in the project should have and then base subsequent titles on the template. If you decide to change the look of your titles, you only need change the template title and the titles based on this template will automatically update to reflect any formatting changes you made to the template title.

Create a Template Title
~~~~~~~~~~~~~~~~~~~~~~~

Choose the :menuselection:`Add Title Clip` item from the :guilabel:`Add Clip` drop down and create a title with the text *%s* in it and formatted how you desire it. Save this title as described above.

.. image:: /images/Template_title1.png
   :align: center
   :width: 250px
   :alt: Template_title1

Use the Template Title
~~~~~~~~~~~~~~~~~~~~~~

Choose the :menuselection:`Add Template Title` item from the :guilabel:`Add Clip` drop down and choose the title with the *%s* in it that you just saved.

Right-click this clip in the Project Bin and select :menuselection:`Clip Properties` item.

.. image:: /images/Title_clip_properties.png
   :align: center
   :width: 200px
   :alt: Title_clip_properties

Enter the text that this title should display into the text field in the dialog that appears.

.. image:: /images/Title_template2.png
   :align: center
   :width: 250px
   :alt: Title_template2

Drag the title to the timeline.

The *%s* in the template will be replaced with the text that you enter in the :guilabel:`Text:` field.

.. image:: /images/Title_template3.png
   :width: 400px
   :alt: Title_template3

A known issue with template titles is that text centering does not work correctly for text replacing the %s.


How to fade titles in and/or out
--------------------------------

To make titles fade in and out, you modify the transition which gets automatically added between the title and the track below. The modifications consist of adding keyframes into the transition and adjusting the opacity of the transitions at these keyframes. In version 0.9.3 it is an :ref:`affine` transition that is automatically added between the title and the track below. In ver 0.9.2 it is a :ref:`composite`.

In the image below we have four keyframes (labeled 1 to 4). The first keyframe is the one currently displayed and we can see that the opacity on this keyframe is zero. The opacity at keyframes 2 and 3 is 100%. The opacity at the 4th keyframe is zero percent. The overall effect is that the title fades in between keyframe 1 and keyframe 2. And then it fades out between keyframe 3 and keyframe 4 .

.. image:: /images/Kdenlive_Fade_titles_anotated.png
   :alt: Kdenlive_Fade_titles_anotated


How to fade in more than one title sequentially
-----------------------------------------------

To create a title sequence like this ...

https://youtu.be/IIV87bFjfo0

You put three titles on three different tracks but you make all three affine transitions go to the same empty video track (instead of the tracks directly below them, which is the default). See timeline screenshot below.

.. image:: /images/Kdenlive_3_fade_in_titles.png
   :alt: Kdenlive_3_fade_in_titles


FAQ
---

Q: How to duplicate a title clip to modify it slightly.

A: You can save a copy of the title (see :ref:`titles`) and then create a new title based on that saved version as described :ref:`titles`. Or you could use the :ref:`titles` functionality to base the two slightly different titles on the one template.

