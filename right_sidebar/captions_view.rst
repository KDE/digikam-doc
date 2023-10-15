.. meta::
   :description: digiKam Right Sidebar Captions View
   :keywords: digiKam, documentation, user manual, photo management, open source, free, learn, easy, description, captions, title, author, labels, rating, date, tags, template

.. metadata-placeholder

   :authors: - digiKam Team

   :license: see Credits and License page for details (https://docs.digikam.org/en/credits_license.html)

.. _captions_view:

Captions View
=============

.. contents::

Overview
~~~~~~~~

This sidebar tab serves to apply and edit image attributes like captions, rating, date and tags. The attributes are stored in the associated database, in the IPTC, XMP, and Exif data fields and become part of the image. All attributes are accessible in one sidebar view as shown in the screenshot below. During image reading the order of priority is ``a)`` database ``b)`` XMP/IPTC and ``c)`` Exif. So if there is a discrepancy between any of the three, this priority will take effect and a synchronization will take place. This sidebar has a first-previous-next-last arrow navigator field on top if shown in the main application.

.. figure:: images/sidebar_captions.webp
    :alt:
    :align: center

    The Captions View From Right Sidebar Displaying Description Information

.. _comment_editors:

Comment Editors
~~~~~~~~~~~~~~~

The descriptions view can be used to type or paste in a title and/or a captions of unlimited size (see note below). The text is UTF-8 compatible, meaning that all special characters are allowed. The captions are copied to Exif, IPTC, and XMP fields to be used by other applications.

.. caution::

    IPTC data only supports ASCII characters and is limited to 2000 characters (old American norm). All texts will be truncated after 2000 chars, and special characters will be malformed. If you intend to use the IPTC caption field in other applications you should be compliant with these restrictions.

Title and caption editors are powerful tool which supports:

   - Multiple alternative language strings.
   - Translate strings online to another language.
   - Author strings definition.

The default language from an alternative strings stack is **x-default** and must be written by preference in English. If one string must be entered in the stack, the x-default must be present in prior.

After commenting, either choose the **Apply** button or go straight to the next image, the descriptions will be saved.

Next to the Apply button there is the **More** button. From it you can either choose to read metadata from the selected file to the database, or the other way around, to write metadata to the files (the latter take place anyway if you chose a metadata setting so that all metadata is always saved to the images). 

.. _date_edit:

Date and Time
~~~~~~~~~~~~~

In the Date and Time section, which reflects the time of taking the photograph, you can change all values. From the date combo-box a calendar opens, and the time setting spin-box can also be written by directly typing the time. The dating is copied to the Exif **Date and Time** field. If you need to change a number of images for their creating time & date, there is a more comfortable method available in **Batch Queue Manager** or from :menuselection:`Item --> Adjust time & date...` menu entry in **Main Window**. Select the images to be changed in the main view and call the tool.

.. _labels_edit:

Labels
~~~~~~

The Rating section displays a 0...5 star rating scheme that can be used in searches and sort orders. It can be applied by a single mouse click to the 5 stars in the sidebar or with a keyboard shortcut :kbd:`Ctrl+0...5`. The rating from the sidebar is always applied to one image at a time. To rate a number of images, select them and pop-up the context menu (click with the right mouse button) to apply a common rating.

The labels view allow to assign also the Color and the Pick tags that you can use in your workflow to classify items.

The rating is then transcribed into the XMP tag data fields.

.. _tags_tree:

Tags Tree
~~~~~~~~~

The tag view shows an adaptive filter tag search box, the tag tree and a combo-box containing the tags previously applied in this digiKam session.

.. figure:: images/sidebar_tags.webp
    :alt:
    :align: center

    The Metadata View From Right Sidebar Displaying Tags Information

The tag tree will be adapted dynamically as a function of the search word as you type into the box. So it is easy to quickly reduce the number of possibilities when searching for a tag. Of course, this feature is only useful if you have many tags.

The combo-box at the bottom is another ergonomic feature for easy tagging of an image series. As you apply different tags they will be memorized in this box for quick access.

Otherwise tags are simply applied by checking the respective boxes in the tree. All tags of an image are transcribed into the XMP/IPTC *keywords* data field.

.. note::

   In case you have selected a number of images in the Icon-View and you check a tag in the tag tree, this one is only applied to the highlighted images, and not to the whole Album contents.

.. _informaton_view:

Information View
~~~~~~~~~~~~~~~~

.. figure:: images/sidebar_information.webp
    :alt:
    :align: center

    The Metadata View From Right Sidebar Displaying Template Information

The Information view allows to assign a template of textuals information to items in one pass. This information can be populated in Setup/Template dialog. They contain all strings describing the contents, the scene, the authors, the rights, the place etc.

For more details about Template, see the description of the :ref:`Template Settings <templates_settings>` section.
