.. metadata-placeholder

   :authors: - Annew (https://userbase.kde.org/User:Annew)
             - Claus Christensen
             - Yuri Chornoivan
             - Simon Eugster <simon.eu@gmail.com>
             - Jean-Baptiste Mardelle <jb@kdenlive.org>
             - Ttguy (https://userbase.kde.org/User:Ttguy)
             - Jack (https://userbase.kde.org/User:Jack)
             - Roger (https://userbase.kde.org/User:Roger)
             - Dadu042 (https://userbase.kde.org/User:Dadu042)

   :license: Creative Commons License SA 4.0

..
  TODO:
  * How to file a bug report, and where? How to do debugging if necessary (link gdb tutorials) when using a dev version?   

.. _troubleshooting_and_common_problems:

Troubleshooting and Common Problems
===================================

.. contents::


Kdenlive warns me about missing codecs, I cannot render in some formats
-----------------------------------------------------------------------

.. image:: /images/icons/MissingCodec.png
   :align: left
   :alt: Missing Codec


There are several possible reasons for this:

#. You have installed the codecs after **Kdenlive's** installation. To force Kdenlive to check available codecs on your system, run the configuration wizard: :menuselection:`Settings --> Run Config Wizard`. Complete the wizard and restart **Kdenlive** to be sure that codecs have been detected.

#. The codecs are not available on your system. **Kdenlive** uses the codecs from your **FFmpeg** or **Libav** library. Due to licensing issues, some distributions do not provide all codecs by default and you might need to install an extra package. On Ubuntu/Mint for example, you must install a package called libavcodec-extra-xx. After that, check the codecs again as explained in the first step.

#. Last possibility is that your **FFmpeg** or **Libav** version is buggy and does not report all supported codecs. **Kdenlive** releases after 0.9.2 have an option to try using codecs even if they seem unsupported: :menuselection:`Settings --> Configure Kdenlive` and check the :menuselection:`Bypass codec verification` option.


Kdenlive is too large on my screen. I cannot make it smaller.
-----------------------------------------------------------------------

This usually happens when too many widgets are open. Each widget label takes a minimum amount of space in width. Close some (e.g. via the :menuselection:`View` button) and consider using layouts (:menuselection:`View --> Save Layout As`).

..  TODO add link to layouts description as soon as available 


I want to trim videos without re-encoding them. How can I do this?
------------------------------------------------------------------

You cannot do this with **Kdenlive**. (Please try `Avidemux <http://avidemux.org/>`_ instead.) The reason is that, for splitting, files need to be treated in a very different manner (the file itself needs to be edited, whereas **Kdenlive** renders frames into a new file).
See also: https://forum.kde.org/viewtopic.php?f=272&amp;t=116144&amp;p=286144&amp;hilit=clips+without+render+angain#p286144.


I want to apply an effect, for example a watermark, to the whole project. What is the best way to do this?
----------------------------------------------------------------------------------------------------------

Create a new project with the same project profile and import the project on which you want to apply the effect as a clip (:menuselection:`Project --> Add Clip`).
See also: `How to: Add a Watermark in Kdenlive <http://vimeo.com/13610402>`_ on Vimeo.


My monitor plays distorted images, or generally something it really should not.
-------------------------------------------------------------------------------

Please check your :menuselection:`Settings --> Configure Kdenlive --> Playback` settings. Try to disable OpenGL if it is enabled, or use a different driver. **Kdenlive** may need to be restarted.


I want to back out to a previous release.
-----------------------------------------
See Notes at :ref:`installation`.
