.. metadata-placeholder

   :authors: - TheDiveO
             - Eugen Mohr
             
   :license: Creative Commons License SA 4.0

.. moved from https://kdenlive.org/en/project/manage-cached-data/

.. _manage_cached_data:


Manage Cached Data
==================

.. versionadded:: 16.04.1

Kdenlive 16.04.1 rather quietly introduced a useful new dialog, to be found in the timeline toolbar: :guilabel:`manage cached data`. This dialog allows you to see how much disk space your projects each eat up. You can then also selectively clean up project-cached data when you don’t need it anymore after finishing a project.

.. container:: clear-both

   .. image:: /images/manage-cached-data.png
      :align: left
      :alt: manage-cached-data
      :width: 350px

   You’ll reach this new dialog via the timeline toolbar :guilabel:`preview render` button, then :guilabel:`Manage Cached Data`.

   This dialog then features two tabs: cached data for the current project, as well as an overall view on all projects.

.. rst-class:: clear-both

Current Project Tab
-------------------

.. container:: clear-both

   .. image:: /images/manage-cached-data-current-project.png
      :align: left
      :alt: manage-cached-data-current-project
      :width: 350px

   The :guilabel:`Current Project` tab gives a detail view on your currently loaded project, with a nice pie chart. It shows you at a glance how much space individual elements of your project need for caching; such as: the timeline preview rendering cache, proxy clips, audio and video thumbnails.

   Here, you can selectively delete only some cached data by simply clicking on the corresponding :guilabel:`trash can` buttons.

   To remove all cache data for the currently loaded project, clip on the bottom :guilabel:`trash can`.

   Finally, when you click on the link which is left to the bottom trash can, the folder containing the project cache will open in your file manager.

.. rst-class:: clear-both
    
All Projects Tab
----------------

.. container:: clear-both

   .. image:: /images/manage-cached-data-all-projects.png
      :align: left
      :alt: manage-cached-data-all-projects
      :width: 350px

   The :guilabel:`All Project` tab gives a detail view on your currently loaded project, with a nice pie chart. It shows you at a glance how much space individual elements of your project need for caching; such as: the timeline preview rendering cache, proxy clips, audio and video thumbnails.

   Here, you can selectively delete only some cached data by simply clicking on the corresponding :guilabel:`trash can` buttons.

   To remove all cache data for the currently loaded project, clip on the bottom :guilabel:`trash can`.

   Finally, when you click on the link which is left to the bottom trash can, the folder containing the project cache will open in your file manager.

