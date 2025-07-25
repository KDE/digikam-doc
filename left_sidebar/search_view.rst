.. meta::
   :description: digiKam Main Window Search View
   :keywords: digiKam, documentation, user manual, photo management, open source, free, learn, easy, advanced, search

.. metadata-placeholder

   :authors: - digiKam Team

   :license: see Credits and License page for details (https://docs.digikam.org/en/credits_license.html)

.. _search_view:

:ref:`Search View <left_sidebar>`
=================================

.. contents::

We talked about a variety of views with specialized search capabilities. The Search View  offers a more versatile and general way of searching. There are two different approaches: Quick Search and Advanced Search.

The Quick Search
----------------

Quick Search is the adaptive search box at the top of the search dialog (Left Sidebar) that provides you with a simple means to search the digiKam database with a single query. Any arguments entered into the **Search** text field will be used to determine the results. For instance, you can enter the string "birthday" to search the complete database for occurrences of the word "birthday" in all metadata text fields, or "05.webp" to search for a specific image file name "05.webp" (no escaping as in reg-expressions needed).

.. figure:: images/left_sidebar_searchview.webp
    :alt:
    :align: center

    The digiKam Simple Search Tool

Search Properties:

    - Searches are case insensitive.

    - Search terms separated by blanks are treated as boolean AND combinations.

    - Special characters are literal and not interpreted ( . * ? / etc.).

    - Includes all elements of the database: names, rating, keywords, tags, albums, collections, dates (and more in the future).

Entering a string into the Save Current Search field will save your most recent search under the specified name. It will then appear in the **Searches** list field below. You can also save your searches as a live folder that always filters for what you entered as search criteria. Just type a name for the search into the **Save Current Search** field and click the **Save** button to the right of it.

When saved, the filter will appear in the **Searches** list. By clicking the title bar of this list you can invert the sorting order. Once you select one of your saved searches, the search result will be presented in the Image Area immediately and the **Save Current Search** field will convert into a **Edit Stored Search** field where you can edit your search criteria. The name of the saved search will be used to label the search result in the Image Area.

You can also manage your saved searches with a context menu by right-clicking on a given saved search. So right-click to delete or rename a saved search from the list.

The textbox below the Searches list can be used to search for saved searches when the Searches list gets too long.

.. _advanced_search:

The Advanced Search Tool
------------------------

The Advanced Search tool provides an extended search form which can be used to search in specific fields of the digiKam database in a more sophisticated way. Click the **New Advanced Search...** button to display the Advanced Search Tool:

.. figure:: images/left_sidebar_advancedsearchtool.webp
    :alt:
    :align: center

    The digiKam Advanced Search Tool

The field labeled **Find items that have associated all these words:** is just a duplicate of the Quick Search field.

Click on one of the blue categories and an area will fold out with all the fields you can search for in the selected category. Different input fields are displayed for your search, depending on the kind of data each field contains. Sometimes more than one type of input are available for the same field. Selection buttons are used for simple fields, e.g. for colors. Others inputs use plain text fields, drop down lists and checkboxes. Many fields have two input fields allowing you to define a range, e.g. **Find items with a width between**. And often you find the word "Any" which looks like a link but opens a drop down field with checkboxes for the possible contents of that field.

.. note:

    The **Return pictures in Tags** propose a drop-down menu with extra options to tune the search:

        - **In All**: All selected tags must be included in the image.
        - **In One Of**: One of the selected tags must be included in the image.
        - **In Tree**: In Tree searches for all images contained in the tag hierarchy.

.. figure:: images/left_sidebar_advancedsearchtool2.webp
    :alt:
    :align: center

    The digiKam Advanced Search Criteria

The labeling of the search fields should make them pretty much self explanatory. But we need to explain how they work together if you fill in or select more than one. On the right side of the blue header at the top you'll find a little link **Options**. If you click on that link the header will change to display four options.

    - **Meet All of the following conditions** means that your different search parameters will be connected by boolean AND for the search. Example: if you selected Album name “Salagou” and color “red” the search will find all pictures labeled with “red” that reside in the Album “Holidays”.

    - **Meet Any of the following conditions** means that your different search parameters will be connected by boolean OR for the search. Example: if you selected Album name “Salagou” and color “red” the search will find the content of the Album “Salagou” and all pictures labeled with “red” that located anywhere in the database.

    - **None of these conditions are met** means that your different search parameters will be connected by boolean NAND for the search. Again our example: if you selected Album name “Salagou” and color “red” the search will find all pictures in the database except those labeled with “red” and except those that are in the Album “Salagou”.

    - **At least one of these conditions is not met** means that your different search parameters will be connected by boolean NOR for the search. One more example: if you selected Album name “Holidays” and color “red” the search will find all pictures in the database except those labeled with “red” and that are in the Album “Salagou”.

Complicated? No, good! Because the real stuff is yet to come. Have a look at the footer of the Advanced Search Tool. Here you'll find **+ Add Search Group**. If you click on this button, another list with the same categories of search fields will open below the first one separated by a blue divider (scroll down in case you don't see it right away). The blue divider offers the same Boolean options we were just talking about. On top of them you see an underlined OR meaning that this list is connected to the first one by boolean OR. You can change that to AND by clicking on it.

We'll use another example to illustrate how this works. Assume that in the options for the first group you checked **Meet Any of the following conditions** and you selected Album name “Salagou” and color “red”. As we said before, this will produce all pictures labeled with “red” from your whole collection plus the content of the Album “Salagou”. Now let's assume for some reason you want to exclude all rejected files and all files with a rating lower than three stars.

So you open the second group, then click on the underlined OR in the header in order to change it to AND. Then select **None of these conditions are met**, expand the **Picture Properties** section, check the red flag (rejected) under **Labels** and select under **Rating** no star (five white stars) in the first field and two stars in the second field. Note that there is a difference between **No star** and **No Rating assigned**! If you want to exclude the pictures without any rating as well you will have to open another Search Group, click on the underlined OR in the header in order to change it to AND, select **None of these conditions are met** and select **No Rating assigned** in the **Picture Properties** category.

You can open as many additional Search Groups as you need to formulate your query.

The **Reset** button (next to the **+ Add Search Group** button) removes all additional Search Groups and clears all the fields in the remaining Search Group. It's a good policy to use this button before starting to create a new search, in particular when you leave the Advanced Search Tool with the intention to use the Quick Search for your next query. Otherwise, the search criteria remain active even if you don't see them, which is likely screw up your new search.

The **Try** button carries out the search but leaves the Advanced Search Tool window open. The **OK** button does the same but closes the window. **Remove Group** in the header of the additional Search Groups doesn't need an explanation.
