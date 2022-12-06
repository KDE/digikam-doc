.. meta::
   :description: Do your first steps with Kdenlive video editor
   :keywords: KDE, Kdenlive, quick start, first steps, documentation, user manual, video editor, open source, free, learn, easy, effects, rotoscoping, 


.. metadata-placeholder

   :authors: - Annew (https://userbase.kde.org/User:Annew)
             - Claus Christensen
             - Yuri Chornoivan
             - Ttguy (https://userbase.kde.org/User:Ttguy)
             - Bushuev (https://userbase.kde.org/User:Bushuev)
             - Roger (https://userbase.kde.org/User:Roger)
             - TheMickyRosen-Left (https://userbase.kde.org/User:TheMickyRosen-Left)
             - Maris Stalte (https://userbase.kde.org/User:limerick)

   :license: Creative Commons License SA 4.0

.. _rotoscoping:

Rotoscoping
===========

.. contents::

What is Rotoscoping?
--------------------

"In the visual effects industry, the term rotoscoping refers to the technique of manually creating a matte for an element on a live-action plate so it may be composited over another background."

   -- `Wikipedia <https://en.wikipedia.org/wiki/Rotoscoping>`_

Draw a region on one video track, and everything outside/inside that region will disappear, showing the video track underneath.

.. image:: /images/Kdenlive_rotoscoping.png
   :align: left
   :alt: rotoscoping

How to draw the region in Kdenlive?
-----------------------------------

The region is drawn by adding nodes along your region. These act as edges for your rotoscope, and there is a line between each node.
The line between each node can be made into a `Bézier curve <https://en.wikipedia.org/wiki/Bézier_curve>`_ using "handles".

Add nodes to the node by left clicking the mouse.

Close the region by right clicking the mouse on one of the nodes.

Change the position of the region by moving a node.

Make a line curved by dragging the control "handles". These are the two dots on the ends of the straight lines that appear on the curve (see screen shot above).

.. image:: /images/Rotoscoping_Handles.png
   :align: left
   :alt: Rotoscoping_Handles

To define if it is the inside or the outside of the curve that is transparent toggle the :guilabel:`Invert` checkbox.

In a previous version of Kdenlive you could add a new nodes by clicking on the line between existing nodes. You could subtract nodes by right clicking on them. But it looks like you can not do this with the 17.04 & 18.04 version.

How to move the mask to follow the action - keyframes
-----------------------------------------------------

To make the drawn mask follow the action in a clip...

Move the position in the clip by dragging the carat on the time line (1 or 3 in screenshot below) or by using the time code control in the rotoscope effect (2 in the screenshot).

Click :guilabel:`Add keyframe` (5 in the screen shot).

Now adjust the position of the nodes in the curve to match the action.

Kdenlive will calculate a path to move the nodes from the position they were in the previous key frame to the position you put them in at this keyframe. So you do not have to draw a curve for every frame in the clip.

To remove a key frame move to the frame with the key frame using the :guilabel:`Go to previous keyframe` (4) or :guilabel:`Go to next keyframe` (6) and then click the red X that which becomes :guilabel:`Add keyframe` (5) when you are on an existing keyframe.

.. image:: /images/Kdenlive_Rotoscoping_drag_points.png
   :align: left
   :alt: Kdenlive_Rotoscoping_drag_points

This effect is based on the MLT `FilterRotoscoping <https://www.mltframework.org/plugins/FilterRotoscoping/>`_.

Rotoscoping options greyed out
------------------------------

.. image:: /images/Roto_scoping_greyed_out.png
   :align: left
   :alt: Roto_scoping_greyed_out

When you first add the rotoscope effect the keyframe options in it are greyed out. You can not even add a new keyframe.

Solution. Click in the project monitor and start drawing your rotoscope matte. Then the rotoscope keyframe options become enabled.

Examples
--------

Examples of what you can do with the Rotoscoping effect.

https://youtu.be/h36S-awjLBk


https://youtu.be/nFv46XQUO34


Example 1.How to make rotoscoping selection.
--------------------------------------------


1. Choose Color, from the main menu to allow work with color scope.

.. image:: /images/image10.png
   :align: left
   :alt: Settings

For this example, the Sun object will be chosen for changing tone. Come back to edit mode.

.. image:: /images/image21.png
   :align: left
   :alt: Object selection

2. Head over to effects menu, type in Rotoscoping then drag it over video to see further instructions.

.. image:: /images/image13.png 
   :align: right
   :alt: Menu setting


3. By clicking the left mouse button for selection object and right mouse click to complete selection.

.. image:: /images/image14.png 
   :align: left
   :alt: Object selection

.. image:: /images/image15.png 
   :align: left 
   :alt: Object selection

4. Come back to color menu then vectorscope via drop-down at the bottom right-hand corner choose YUV paint mode.

.. image:: /images/image18.png 
   :align: left 
   :alt: YUV selection

5.  Choose color balance for color grading.

.. image:: /images/image19.png 
   :align: left 
   :alt: Color balance selection

Tutorial with Rotoscoping
-------------------------

This video is about green screen on **Kdenlive** but he does use rotoscoping in it too.

https://youtu.be/_6gxHLCFhLQ

