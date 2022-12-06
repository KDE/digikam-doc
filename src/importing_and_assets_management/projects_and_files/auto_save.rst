.. meta::
   :description: The Kdenlive User Manual
   :keywords: KDE, Kdenlive, documentation, user manual, video editor, open source, free, help, auto save, automatic saving

.. metadata-placeholder

   :authors: - Julius Künzel <jk.kdedev@smartlab.uber.space 
             - Eugen Mohr

   :license: Creative Commons License SA 4.0

.. _auto_save:

Auto Save
=========

Autosaves are generated 3 seconds after the user do a undoable action, **BUT** only if you don't do another action within these 3 seconds. These autosaves are offered the first time after you open the project again in case the autosave is newer than the last saved project version. Autosaves are stored in stale files, not in normal \*.kdenlive files
