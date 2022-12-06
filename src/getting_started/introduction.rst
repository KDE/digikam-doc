.. meta::
   :description: Introduction to Kdenlive video editor
   :keywords: KDE, Kdenlive, Introduction, documentation, user manual, video editor, open source, free, learn, easy

.. metadata-placeholder

   :authors: - Annew (https://userbase.kde.org/User:Annew)
             - Claus Christensen
             - Yuri Chornoivan
             - Simon Eugster <simon.eu@gmail.com>
             - Ttguy (https://userbase.kde.org/User:Ttguy)
             - Vincent Pinon <vpinon@kde.org>
             - Roger (https://userbase.kde.org/User:Roger)
             - Qubodup (https://userbase.kde.org/User:Qubodup)
             - Thompsony (https://userbase.kde.org/User:Thompsony)
             - Camille Moulin

   :license: Creative Commons License SA 4.0

..  TODO:
  * What is kdenlive good for? (Editing videos …)   * Where is it located? (Semi-Pro?) Alternatives? (Cinelerra, OpenShot, Lightworks, ...)   * What components does kdenlive use? See `this image <http://kdenlive.org/sites/default/files/images/kdenlive-mlt-diagram.png>`_.
  * What components does kdenlive use?

  In effect Kdenlive is front end to melt - also known as MLT. The MLT video framework  relies on the FFMPEG project. Kdenlive writes sh.mlt XML files that code the edit points and transitions and it then calls /usr/bin/kdenlive_render and /usr/bin/melt to render the video.

.. _introduction:

Introduction
============

.. contents::


**Kdenlive** is an acronym for `KDE <http://www.kde.org>`_ **N**\ on-\ **Li**\ near **V**\ ideo **E**\ ditor.
It is a free software (`GPL licensed <http://www.fsf.org/licensing/licenses/gpl.html>`_) primarily aimed at the Linux platform, but it also works on BSD [1]_  as it relies only on portable components (`Qt <https://www.qt.io/>`_ and `MLT <http://www.mltframework.org/>`_ framework). Windows versions are also available, with some drawbacks. See :ref:`windows_issues` for more information. A port on MacOS is `currently in progress <https://invent.kde.org/multimedia/kdenlive/-/issues/993>`_. 


*Non-linear video editing* is much more powerful than beginners' (linear) editors, hence it requires a bit more organization before starting. However, it is not reserved to specialists and can be used for small personal projects.


Through the MLT framework, **Kdenlive** integrates many plugin effects for video and sound processing or creation. Furthermore **Kdenlive** brings a powerful titling tool, a subtitling feature with automatic speech to text conversion, and can then be used as a complete studio for video creation.

..  Content imported from wikibook version 


Video editing features
----------------------



..  COMMENT: You will probably notice that I have shortened the list a LOT. With all the respect to the previous contributors, I think that it´s better to put only some (the most important) features here, as many of them will certainly become "old and cold" with the release of newer versions of Kdenlive, and will anyway be treated in the rest of the manual. Maybe a good idea, however, is to create a "What´s New" section, if the Kdenlive new site does not contain one. 


* Multitrack edition with a timeline and virtually unlimited number of video and audio tracks, plus facilities for splitting audio and video from a clip in multiple tracks


* Non-blocking rendering. You can keep working on a project at the same time a project is being transformed into a video file


* Effects and transitions can be used with ease, and you can even create some wipe transitions of your own!


* Simple tools for easy creation of color clips, text clips and image clips


* Automatic :ref:`clips` creation from pictures directories, with crossfade transitions among the images


* Configurable keyboard shortcuts and interface layouts


* and much more!


.. [1] Berkeley Software Distribution
