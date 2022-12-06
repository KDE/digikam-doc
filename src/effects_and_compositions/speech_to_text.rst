.. meta::
   :description: The Kdenlive User Manual
   :keywords: KDE, Kdenlive, documentation, user manual, video editor, open source, free, help, speech to text, silence detection

.. metadata-placeholder

   :authors: - Annew (https://userbase.kde.org/User:Annew)
             - Claus Christensen
             - Yuri Chornoivan
             - Jean-Baptiste Mardelle <jb@kdenlive.org>
             - Ttguy (https://userbase.kde.org/User:Ttguy)
             - Vincent Pinon <vpinon@kde.org>
             - Jessej (https://userbase.kde.org/User:Jessej)
             - Jack (https://userbase.kde.org/User:Jack)
             - Roger (https://userbase.kde.org/User:Roger)
             - TheMickyRosen-Left (https://userbase.kde.org/User:TheMickyRosen-Left)
             - Eugen Mohr
             - Smolyaninov (https://userbase.kde.org/User:Smolyaninov)
             - Tenzen (https://userbase.kde.org/User:Tenzen)
             - Anders Lund

   :license: Creative Commons License SA 4.0

.. _speech_to_text:

Speech to text
==============

.. versionadded:: 21.04.0

.. warning::

   Speech to text doesn't work with version 21.04.2 due to `Vosk API <https://github.com/alphacep/vosk-api>`_ issues. Use version 21.04.1 or 21.04.3 and later versions.


Install Python
--------------

Python 3 needs to be installed on your computer as well as the vosk and srt python modules:

Linux
~~~~~

On most Linux distributions python is installed by default. You can check if that is the case for you too by running ``python3 -V`` in a terminal. If python is missing just search the internet, there are lots of instructions around.

To install vosk and srt open a terminal and run: ``pip3 install vosk srt``

Windows
~~~~~~~

1. Download python from https://www.python.org/downloads/ for installation on your computer.
2. Download this batch file (:download:`Install_vosk_srt.zip </files/Install_vosk_srt.zip>`). After download a double click starts the installations.

.. _install_language:

Install a language
------------------

Goto :menuselection:`Settings --> Configure Kdenlive... --> Speech to Text page`

Click on the link to get a language model.

.. image:: /images/Speech-to-text_Download-link.png
   :alt: download link

Drag & drop the language you want from the vosk-model download page to the model window, and it will download and extract it for you.

.. image:: /images/Speech-to-text_Download-model.png
   :alt: download model

If you have problems press on the :guilabel:`Check configuration` button.

Speech recognition
------------------

Creating subtitle by speech recognition
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. image:: /images/Speech-to-text_Subtitle.png
   :alt: Speech to text subtitle

1. Mark the timeline zone you want to recognize (adjust the blue line).

2. Click on the :guilabel:`Speech recognition` icon.

3. Choose the language.

4. Choose how the selected zone should be applied.

5. Press on the :guilabel:`Process` button.

The subtitle gets created and inserted automatically.

Remark: Only timeline zone is implemented for now in automatic subtitles.

Remark to 4: The default is to analyze only the :guilabel:`timeline zone (all tracks)` (the blue bar in the timeline ruler). Set the zone in the timeline to what you want to analyze (use :kbd:`I` and :kbd:`O` to set in and out points). :guilabel:`Selected clips` option analyses the selected clip only.

Creating clips by speech recognition
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

This is useful for interviews and other speech-related footage.
Enable the :menuselection:`View --> Text Edit` menu item.

.. image:: /images/Speech-to-text_Text-Edit.png
   :alt: Text edit

Select a clip in the project bin.

1. If needed set in/out point in the clip monitor and enable :guilabel:`Selected zone only` selection box. This will only recognize the text inside the zone.

2. Choose the correct language.

3. Press the :guilabel:`Start Recognition` button.

4. Selecting the text you want to either.

5. Put into the timeline.

6. :guilabel:`Save` edited text as a new playlist.

7. Add a Bookmark. You can jump to these bookmarks in the timeline with the :kbd:`Alt + arrow` shortcut or edit the bookmark by double click.

8. Delete the selection.

9. Here you can search in the text.

10. And navigate up or down in the text.

.. _silence_detection:

Silence detection
-----------------

Open the clip in the clip monitor and open the speech editor window (:menuselection:`View --> Speech Editor`) .

Select your language or :ref:`install_language` and download the model for it.

Then click :guilabel:`Start Recognition` button.

Once this is done, click on the time-code where no-speech is indicated and just hit the :kbd:`delete` key. Repeat the operation for all the parts you want to remove, including where someone says what you don't want to listen in your final edit.

Once finished, make sure :guilabel:`Selected zone only` is disabled, click on the :guilabel:`Save` button on the lower left part of the speech editor window and after few seconds a new playlist is added in the project bin without silence and without the text you don't want.