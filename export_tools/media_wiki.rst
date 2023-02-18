.. meta::
   :description: digiKam Export to MediaWiki Web-Service
   :keywords: digiKam, documentation, user manual, photo management, open source, free, learn, easy, mediawiki, export

.. metadata-placeholder

   :authors: - digiKam Team

   :license: see Credits and License page for details (https://docs.digikam.org/en/credits_license.html)

.. _media_wiki:

Export To MediaWiki
===================

.. contents::

Sharing is caring, and there is probably no better way to share your photographic masterpieces with the world than adding them to a `MediaWiki <https://en.wikipedia.org/wiki/MediaWiki>`_ pool. While the project’s website features its own tool for uploading photos, digiKam’s MediaWiki Export plugin can come in rather handy when you need to export multiple photos in one fell swoop without leaving the convenience of your favorite photo management application.

MediaWiki are the base of `Media Repositories <https://en.wikipedia.org/wiki/Digital_library>`_ avaialble on the Internet where free-to-use images can be uploaded. The goal of these digitial libraries is to share contents used across all of the Wikimedia projects as the famous **Wikipedia** encyclopedia for exemple.

To upload a selection of images from your collection to a remote MediaWiki server using the Internet, uses the :menuselection:`Export --> Export to MediaWiki` menu entry, or the corresponding icon from the **Tools** tab in Right Sidebar. 

.. figure:: images/export_media_wiki.webp
    :alt:
    :align: center

    The MediaWiki Export Dialog

The **Items Properties** tab of the right side allows to customize MediaWiki metadata of each items present from the upload list. Select one item on the left side to see the properties populated by digiKam, and adjust values if necessary. When all is ready, switch to the **Upload Settings** tab to be connected to the remote server and transfert files.
    
.. figure:: images/export_media_wiki_login.webp
    :alt:
    :align: center

    The MediaWiki Export Account Settings

First, you needs to be connected to the server with an **Account**. From this view, you can enter the MediaWiki service to use and the login and password properties. By default, the tool propose a list of popular MediaWiki servers available on the Internet, as:

    - `Wikimedia Commons <https://commons.wikimedia.org/w/api.php>`_
    - `Wikimedia Meta <https://meta.wikimedia.org/w/api.php>`_
    - `Wikipedia <https://en.wikipedia.org/w/api.php>`_
    - `Wikibooks <https://en.wikibooks.org/w/api.php>`_
    - `Wikinews <https://en.wikinews.org/w/api.php>`_
    - `Wikiquote <https://en.wikiquote.org/w/api.php>`_
    - `Wikisource <https://en.wikinews.org/w/api.php>`_
    - `Wiktionary <https://en.wiktionary.org/w/api.php>`_
    - `MediaWiki <https://www.MediaWiki.org/w/api.php>`_
    - `Wikia Foto <https://foto.wikia.com/api.php>`_
    - `Wikia Uncyclopedia <https://uncyclopedia.wikia.com/api.php>`_

With the **+ NEW** button, you can add on the list another MediaWiki based server available on Internet or on your local network. The tool will shown a widget to customize the **Name** and the **API Url**. Just press on **+ Add** button to confirm values.

When you are logged to the remote Web service, the **Account** view must become like below:

.. figure:: images/export_media_wiki_account.webp
    :alt:
    :align: center

    The MediaWiki Export Connected to an Account from Wikimedia Commons Web Service

.. figure:: images/export_media_wiki_info.webp
    :alt:
    :align: center

    The MediaWiki Export Information Settings

.. figure:: images/export_media_wiki_options.webp
    :alt:
    :align: center

    The MediaWiki Export Options Settings

.. figure:: images/export_media_wiki_progress.webp
    :alt:
    :align: center

    The MediaWiki Export Uploding Contents to the Web Service

.. figure:: images/export_media_wiki_stream.webp
    :alt:
    :align: center

    The Wikimedia Commons Online Account Displaying the Uploaded Contents
