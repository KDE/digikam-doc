.. meta::
   :description: Basic Operations With digiKam Image Editor
   :keywords: digiKam, documentation, user manual, photo management, open source, free, learn, easy, image, editor, revert, undo, redo, print, review

.. metadata-placeholder

   :authors: - digiKam Team

   :license: see Credits and License page for details (https://docs.digikam.org/en/credits_license.html)

.. _basic_operations:

Basic Operations
================

.. contents::

Revert to Original Photograph
-----------------------------

The editing functions of the Image Editor will make changes to your photograph. None of the editing functions will change the original photograph unless you selecting :menuselection:`File --> Save` or clicking the **Save** button in the tool bar. Note that once you have saved the changed version you will not be able to recover the original photograph.

You might prefer to take a copy of your photograph before you make any changes. You can use :menuselection:`File --> Save As...` to save a working copy.

At any time before you save your photograph you can restore the view to the original image by selecting :menuselection:`File --> Revert` or clicking the **Revert** button on the tool bar. You will lose any changes that you have made to the photograph since it was last saved.

Undoing and Redoing Actions
---------------------------

Almost anything you do to an image in Image Editor can be undone and redone. You can undo the most recent action by choosing :menuselection:`Edit --> Undo`, and redo by :menuselection:`Edit --> Redo`.

If these are done frequently, you really should memorize the keyboard shortcuts, :kbd:`Ctrl+Z` to undo an action, and :kbd:`Ctrl+Shift+Z` to redo an action.

You have to press the left mouse button over the undo or redo icon in the tool bar and hold it down for a moment to produce a context menu. If you choose one of the menu items, all undo or  redo actions until the chosen ones are undone or redone.

Moving Between Photographs
--------------------------

Once you have started the Image Editor you can move between photographs in the same view you started from by using the navigator buttons on the toolbar, :kbd:`PgUp`, :kbd:`PgDn` or the entries in the **File** menu. If you have made any changes to the current photograph you will be asked if you want to save them.

Changing the View
-----------------

You can zoom in and out of a photograph using the **Ctrl-scroll** wheel, the toolbar icons or the entries in the View menu.

To make a photograph fit the window use the **Zoom Autofit** button from the tool bar.

:menuselection:`View --> Full Screen Mode` will display the photograph using the full screen mode. You can move back to the normal view by pressing the :kbd:`Esc` key. By default the toolbar is still displayed even in Full Screen Mode. If you would prefer that the toolbar is not displayed you can turn it off in the Configure digiKam dialog accessed from the main digiKam window, see the :ref:`Setup Image Editor Window <editor_settings>` section.

Printing Images
---------------

When you want to print the current image from the Image Editor, select :menuselection:`File --> Print image...` :kbd:`Ctrl+P` and you get the standard Print dialog, where you can adjust the settings before printing your photograph.

.. figure:: images/editor_print_dialog.webp
    :alt:
    :align: center

    Standard Print Dialog from image Editor

.. note::

    Under Windows, at least one printer module must be installed on your system to support this function.

From the main window view you can print single images or whole sets of them. Entire thumbnail pages can be printed with your selection. All you need to do is selecting images the standard way and call :menuselection:`Item --> Print Creator...`. Then follow the instructions and choices to make as explained :ref:`in the section <print_creator>` from the manual.
