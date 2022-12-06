.. metadata-placeholder

   :authors: - TheDiveO
             - Eugen Mohr
             
   :license: Creative Commons License SA 4.0

.. moved from https://kdenlive.org/en/project/extract-frame-to-project/

.. _extract_frame_to_project:

Extract frame to project
========================

.. versionadded:: 16.12.0

If you happen to work a lot with still images from your video source material in your Kdenlive project, then you may like the new :guilabel:`Extract Frame to Project`, scheduled to debut in Kdenlive 16.12.0. Instead of the tedious mill of extract clip, thinking of a usable image filename other than adshsgfg.png, then finding this file again to add it to your project … simply let Kdenlive propose a suitable filename, click OK, and you’re set.

Extract Frame to Project
------------------------

.. image:: /images/kdenlive-extract-clip-to-project.png
   :alt: kdenlive-extract-clip-to-project

The clip and project monitors now have a new context menu item :guilabel:`Extract frame to project`, in addition to the existing :guilabel:`Extract frame`. This new menu item not only extracts the currently shown frame, but also adds it automatically to your project.

You’ll still see the :guilabel:`Save Image` dialog, but there’s additional convenience: Kdenlive now proposes an image filename. This bases on either (in the clip monitor) on the clip name, or (in the project monitor) on the project filename. To avoid filename clashes when extracting multiple frames from the same source clip or project, Kdenlive neatly adds the frame number. So, when extracting frames from your clip named `coolclip.mp4`, the suggested image names are like `coolclip-f42.png`, and so on. Of course, you can still use your own filenames as before. But you’ll probably soon start to like just forgetting about filenames, as it is so convenient to focus on content, not clip names.

The extracted image is immediately added to your project bin. If you use bin folders, then the image gets added to your currently selected bin folder.

On purpose, Kdenlive **does not** switch to the project bin. This way, you can focus on extracting the required still images from a source video clip, without loosing context all the time. In contrast, with the exiting :guilabel:`Extract frame`, you need to add the extracted still images at some time, so you need to switch to the project bin, loosing the context on your source clip.