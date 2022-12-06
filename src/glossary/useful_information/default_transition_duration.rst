.. metadata-placeholder

   :authors: - TheDiveO
             - Eugen Mohr
             
   :license: Creative Commons License SA 4.0

.. moved from https://kdenlive.org/en/project/configuring-the-default-transition-duration/   

.. _configuring_the_default_transition_duration:

Configuring the Default Transition Duration
===========================================

.. versionadded:: 16.08.1

You can now configure the **default duration for all newly created transitions**. Before this, all new transitions were always 65 frames long – and this translated to varying default durations, depending on a project’s frame rate. This new configuration option should appeal all those users who work a lot with transitions.


.. image:: /images/config-transition-duration.png
   :align: left
   :alt: config-transition-duration
   :width: 400px

Go to :menuselection:`Settings --> Configure Kdenlive --> Misc` category. Under the heading Default Durations you’ll now find the new fifth option to configure the default duration for newly created transitions. Enter a duration in the usual format hh:mm:ss:ff.

Please note that the frames (:ff) field will be interpreted on the basis of the current project’s framerate. In contrast, the other fields hh:mm:ss are independent of the framerate.
