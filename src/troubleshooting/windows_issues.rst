.. meta::
   :description: The Kdenlive User Manual
   :keywords: KDE, Kdenlive, documentation, user manual, video editor, open source, free, help, learn, Windows workaround, problem solving

.. metadata-placeholder

   :authors: - Claus Christensen
             - Yuri Chornoivan
             - TheMickyRosen-Left (https://userbase.kde.org/User:TheMickyRosen-Left)
             - Carl Schwan <carl@carlschwan.eu>
             - Eugen Mohr

   :license: Creative Commons License SA 4.0


.. _windows_issues:

Windows issues
==============

.. contents::

The current **Kdenlive** on Windows® (April 2022, version 21.12.3) has a few issues that have workarounds. The purpose of this wiki page is to document these issues and their workarounds.

.. _reset_configuration:

Title tool, display real background not working in "DirectX" backend
--------------------------------------------------------------------

Something with the settings went wrong. Go to: :menuselection:`Help --> Reset Configuration` and try again.


Render problems
---------------

After rendering you get de-synced audio or wrong effects or black frames at end of the last clip: download version 20.08.1 or higher from the `download page <https://kdenlive.org/en/download>`_. If you still experience problems see :ref:`windows_issues`.

Scopes doesn't show anything
----------------------------

:ref:`scopes_directx` 


Audio crackling while playback
------------------------------
:kbd:`CRL + SHIFT +,` (comma), select :menuselection:`Playback --> audio backend` and play around with :menuselection:`WinMM` (Win7), :menuselection:`Wasapi` (Win10), :menuselection:`DirectSound` to see what give the best result. Restart Kdenlive after each switch.


This application failed to start because no Qt platform plugin could be initialized
-----------------------------------------------------------------------------------

Hit :kbd:`CTRL + SHIFT + ,` (comma) > :menuselection:`environment` > make sure the paths point to the same path as "MLT profiles folder".

Download: :download:`qt.conf </files/qt.conf>`. Put the file :file:`qt.conf` into the "bin" folder (the folder where :file:`kdenlive.exe` is)


First time use of Kdenlive
--------------------------

This issue should be solved with Windows version 19.04.2-6. That :file:`kdenliverc` is correct set up please start Kdenlive twice (start -> close -> start). Then start your work.


Intel graphic card driver
-------------------------

Updated Intel graphic driver versions lead to a corrupted Kdenlive GUI.

**Solution 1:** Open Kdenlive. Move the mouse to the top. The menus are showing up. Try to reach :menuselection:`Settings` -> :menuselection:`openGL backend` -> enable :menuselection:`OpenGLES`/:menuselection:`DirectX`. Restart Kdenlive. This should solve your Intel graphic driver issue.

Maybe this statement helps: `Corrupted GUI <https://forum.kde.org/viewtopic.php?f=265&t=161309#p425882>`_.


**Solution 2:** Press :kbd:`Win + R` (:kbd:`Windows` key and :kbd:`R` key simultaneously) and type **appdata**. Go to :file:`local` and within it open :file:`kdenliverc` with an editor. Search for ``[misc]`` and delete ``[misc]`` and the following entry.
. Restart Kdenlive.


.. _style:

Timeline: right-click menu close immediately after releasing mouse button
-------------------------------------------------------------------------

Don't use the style :menuselection:`Fusion`.


Go to: :menuselection:`Settings` -> :menuselection:`Style` and choose :menuselection:`Default` or :menuselection:`Windows`.

.. _force_breeze_icon_theme:

Icons are missing
-----------------

Go to: :menuselection:`settings` -> untick :menuselection:`force breeze icon theme`. Kdenlive restarts and you should see the icons.


Cannot open projects made with previous version, timeline snaps back, cannot import clip
----------------------------------------------------------------------------------------

Go to: :menuselection:`Help --> Reset configuration`. 


If this is not solving the problem: Press :kbd:`Win + R` (:kbd:`Windows` key and :kbd:`R` key simultaneously) and type **appdata**. Go to :file:`local` and within it rename :file:`kdenliverc` to :file:`kdenliverc.old`. Start Kdenlive -> do nothing -> close Kdenlive -> and restart Kdenlive again.


If you have still problems delete proxy clips and other cached data by going to :menuselection:`Project` menu > :menuselection:`Project Setting` > :menuselection:`Cache Data` tab > there you can delete cached data.


If you have still problems try :ref:`windows_issues`.


Windows 10: timeline stuttering or Kdenlive hangs.
--------------------------------------------------

Most probably you got a major Win10 update (i.e 1809). If so you have to update all drivers for audio and video.
   
Intel driver can be updated with this updater: `Intel updater <https://downloadcenter.intel.com/en/download/28425/Intel-Driver-Support-Assistant>`_.


"Clip is invalid, will be removed"
----------------------------------

This bug can appear if you do a clean reinstall of **Kdenlive** (see above). Simply close and open **Kdenlive** once, and it should be fixed.


Additionally this can be a problem either with the :file:`kdenliverc` file (see here :ref:`windows_issues`) or you have some mismatch in the "local" folder (see here :ref:`windows_issues`).


Any critical bug
----------------

This describes the process of doing a clean install on Windows®.


Firstly, delete your normal **Kdenlive** folder (containing the application)


Access the **Appdata** folder (:kbd:`Win + R` and then type **APPDATA** in full caps). Go to :file:`local` and search for folder :file:`kdenlive`.


.. note::

  If you have any saved effects or clips stored in your library, make a backup of the library folder.


Then once you have backup up your library folder, delete the :file:`kdenlive` folder.


Reinstall the latest version of **Kdenlive** from the `download page <https://kdenlive.org/en/download>`_


JPG files appear as white picture after rendering
-------------------------------------------------

This issue should be solved with Windows version 19.04.0. If not convert the JPG to PNG and it renders correctly.


Play/Pause Issue
----------------

This issue is solved with Windows version 18.08.2 (30. Oct 2018). Get the current version from the `download page <https://kdenlive.org/en/download>`_.


Qt rendering crash
------------------

Hit :kbd:`CTRL + SHIFT + ,` (comma) > :menuselection:`environment` > make sure the paths point to the same path as "MLT profiles folder".


When switching from kdenlive for windows 17.12 > 18.04/18.08, a Qt rendering crash appears. To make sure this doesn't happen, you need to edit the :file:`kdenliverc` file in the :file:`appdata/local` folder. To access your appdata, press :kbd:`Win + R` (:kbd:`Windows` key and :kbd:`R` key simultaneously) and type **appdata**. Go to :file:`local` and within it rename :file:`kdenliverc` to :file:`kdenliverc.old`.


Kdenlive cannot be deleted, running process on exit
---------------------------------------------------

This issue is solved with Windows version 18.12.1. Get the current version from the `download page <https://kdenlive.org/en/download>`_.


If you want to reinstall **Kdenlive** or re-run **Kdenlive**, it may tell you "The file or folder is open in another program". Windows® then won't let you delete or re-run **Kdenlive**.


To fix this you have to kill the running process: press and hold :kbd:`Ctrl + Shift + Esc` &  expand the task manager by clicking :menuselection:`all details`. Then find :file:`kdenlive.exe` &  :file:`dbus-daemon.exe`, and click :menuselection:`End task` for both of them.


Or download the: :download:`Kdenlive-kill.zip </files/Kdenlive-kill.zip>`. Unpack it and just double-click the batch file which kills all running **Kdenlive** processes.


Kdenlive crash at start up, Kdenlive cannot be uninstalled
----------------------------------------------------------

If Kdenlive crash at startup or if the uninstaller doesn't work delete the entire folder: :file:`C:/Program Files/kdenlive`.

Re-install Kdenlive

You have to manually delete in the start menu the Kdenlive folder.


Kdenlive crash or green Monitor
-------------------------------

Get all newest Windows® updates. Afterwards, update your graphic card driver and your sound card driver and your printer driver.
Some crashes could occur of incompatibility of the graphics card and sound card with the newest Windows®10 updates (18.09 update).
After you have updated the drivers re-start the computer and try again by starting :file:`kdenlive.exe`.


If this is not solving the problem switch your standard printer to “Microsoft XPS Document Writer” and try again to start Kdenlive.


Delete the :file:`kdenliverc` file as descript here under :ref:`windows_issues`.


Make sure you set processing thread to 1: :kbd:`Ctrl + Shift + ,` (comma) > :menuselection:`Environment` > :menuselection:`Processing thread` > set to 1


General Issues
==============

The current **Kdenlive** version (November 2018, version 18.08.3) has a few issues that have workarounds. 


Audio Pops and Ticks in Render
------------------------------

If this problem appears make sure the audio file is: 16-bit PCM WAV.
