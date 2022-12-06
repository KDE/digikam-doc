.. metadata-placeholder

   :authors: - Annew (https://userbase.kde.org/User:Annew)
             - Claus Christensen
             - Yuri Chornoivan
             - Gallaecio (https://userbase.kde.org/User:Gallaecio)
             - Vincent Pinon <vpinon@kde.org>
             - Jack (https://userbase.kde.org/User:Jack)
             - Eugen Mohr

   :license: Creative Commons License SA 4.0

.. _project:

Project File Details
====================

.. contents::




**Kdenlive** projects consist in a singe :file:`.kdenlive` file (in XML format), gathering :


* target video and audio properties

* references to all the source materials (and to their lighter *proxies* work copies)

* clips arrangement on the timeline, with effects applied, and everything to get the final result


Project files are associated with a working directory, in which **Kdenlive** will generate *proxies* and *thumbs*, so that an overview of your media always shows up quickly (if you move your project file, you should declare the directory change in the project properties).

.. versionadded:: 20.08.0
   A major refactoring of the project file fixes a long standing issue with the decimal separator (comma/point) conflict causing many crashes.

.. warning::

   Projects created with 20.08 forward are not backwards compatible, that is, you won’t be able to open your :file:`.kdenlive` project files with older versions.


