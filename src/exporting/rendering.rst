.. metadata-placeholder

   :authors: - Annew (https://userbase.kde.org/User:Annew)
             - Claus Christensen
             - Yuri Chornoivan
             - Nikerabbit (https://userbase.kde.org/User:Nikerabbit)
             - Simon Eugster <simon.eu@gmail.com>
             - Jean-Baptiste Mardelle <jb@kdenlive.org>
             - Earl fx (https://userbase.kde.org/User:Earl fx)
             - Ttguy (https://userbase.kde.org/User:Ttguy)
             - Vincent Pinon <vpinon@kde.org>
             - Bushuev (https://userbase.kde.org/User:Bushuev)
             - Roger (https://userbase.kde.org/User:Roger)

   :license: Creative Commons License SA 4.0

.. _rendering:

Rendering Using Guides and Rendering Scripts
============================================

.. contents::


Purpose
-------

When editing video, time means everything. Especially how long it takes you to edit the clips, project, or footage you are working on. If you ever need to export sequences of your timeline separately, **Kdenlive** offers a great way to do this. You can set guides in your project that establish zones. You then can generate rendering scripts that will export these zones at a later date, during your sleep, or while you hunt and find food. Let's check out how to do this.


Picking Sections with Guides
----------------------------

Start by adding a clip into the timeline. I've added some retro footage about airplanes. Cool.

.. image:: /images/kden-render-howto-9.png
   :align: center
   :width: 400px
   :alt: Figure 1

Next we want to add a guide for a specific section of the clip on the timeline. You can add a guide by selecting :menuselection:`Timeline` in the menu and then slide down to :menuselection:`Guides` and select :menuselection:`Add Guide` from the menu. Right clicking the top of the timeline also gives you the option :menuselection:`Add Guide`. If you want to, you can also edit the guides you have set by right clicking on the timeline.

.. image:: /images/Kden-render-howto-8.png
   :align: center
   :width: 400px
   :alt: Figure 2

After selecting this option, a window appears giving you the *Position* of the guide and a field to add a comment. Labeling the guide won't hurt anyone, so I'll name my first guide the extraordinary *Section 1*. A dark blue line appears vertically down through the tracks on your timeline.

.. image:: /images/Kden-render-howto-10.png
   :align: center
   :width: 400px
   :alt: Figure 3

I'll add a few more guides and then we'll start rendering.

.. image:: /images/Kden-render-howto-11.png
   :align: center
   :width: 400px
   :alt: Figure 4

The screenshot shows the 6 guides I have put in my project. They chop up the existing clip as I want for my project (that hopefully will become the first hit retro-experimental film...). Now we can export scripts that, when executed, will render these guide zones.


Generating Rendering Scripts
----------------------------

Start by clicking on the :guilabel:`Render` button in your toolbar, the one with the red circle surrounded by a white and black ring. You can also select this by going to the :menuselection:`Project --> Render` menu item (:kbd:`Ctrl + Return`).

.. image:: /images/Kden-render-howto-1.png
   :align: center
   :width: 400px
   :alt: Figure 5

The new window gives us many choices about how to render our video. Look at the bottom of the window. We need to select the :guilabel:`Guide zone` option. Selecting this will allow us to render our project using the guides we made earlier. Be sure and name the output file to a unique name for each script we will create. Otherwise the scripts will overwrite the different guide zones and not do what you wanted.

.. image:: /images/Kden-render-howto-2.png
   :align: center
   :width: 400px
   :alt: Figure 6

We now can choose which guides will establish the regions of video we want to export using the pull down menus next to *From* and *to*. I'll cut out the *Beginning* and instead use *section 1* to *Section 1 End*, the guide names I defined earlier.

.. image:: /images/Kden-render-howto-3.png
   :align: center
   :width: 400px
   :alt: Figure 7

Now I can render this to a file or generate a script that will render this guide zone to a file. Click :menuselection:`Generate Script` and a dialog appears asking you to name the script. **Kdenlive** stores the clips in :file:`/yourhomedirectory/kdenlive/scripts`

.. image:: /images/Kden-render-howto-5.png
   :align: center
   :width: 400px
   :alt: Figure 8

After saving the script, the top tab in the window switches to :menuselection:`Scripts`. This lists all the scripts you have generated for the current project.

.. image:: /images/Kden-render-howto-6.png
   :align: center
   :width: 400px
   :alt: Figure 9

I went ahead and generated 3 scripts based on the guide zones I set up in my timeline. Be sure and keep the :file:`.sh` extension otherwise the rendering script will not be generated.


Starting Your Rendering Scripts
-------------------------------

Once each script is generated, you need to start each one. You should be in the script tab and see your scripts listed. Start the process by selecting the script and clicking the :guilabel:`Start Script` button. Do this for each script.

.. image:: /images/Kden-render-howto-7.png
   :align: center
   :width: 400px
   :alt: Figure 10

After clicking each script, you are switched to the *Job Queue* tab. Here you will see what script is being run and how many more are waiting to be run. If you have a large queue, you can take advantage of the nifty checkbox in the bottom left: :guilabel:`Shutdown computer after renderings`


Starting Your Rendering Scripts in a Command Line Terminal
----------------------------------------------------------

For troubleshooting purposes there could be times that you want to run the render script in a terminal prompt. Rendering in the terminal can produce error logging information that can assist in debugging rendering issues.

To render the video in the terminal ...

* Note the location where **Kdenlive** has saved the .sh script (see Figure 8)
* Open a terminal and change directories to the location of the :file:`.sh` script
* execute the :file:`.sh` script

.. code-block:: bash

  $ cd /home/earl/kdenlive/scripts

  $ sh render_section_1.sh

or

.. code-block:: bash

  $ ./render_section_1.sh


Summary
-------

Creating guides can help organize your project while you work on it and when you share it with the world. You can use guides to keep track of areas or to generate rendering scripts that will do the mundane task for you. This feature makes exporting sections of your project quite easy. There are also other ways to take advantage of rendering sections and guide zones using guides. Have fun. Explore!

