.. metadata-placeholder

   :authors: - TheDiveO
             - Eugen Mohr
             
   :license: Creative Commons License SA 4.0

.. moved from https://kdenlive.org/en/project/howto-fading-inout-kdenlive-titles/

.. _howto_fading_inout_kdenlive_titles:

How to fading in-out Kdenlive titles
====================================

In this short *HOWTO* video, we show you how to (smoothly) fade in and out Kdenlive titles over a video clip, fading from and to transparency. The key to success is to use a **Composite & Transform** transition with keyframes (**Affine** and **Composite** will work too). **Don’t use** the Fade from/to Black effects though, as these effects remove the title transparency information. 

.. image:: /images/Kdenlive-Title-Fading-Still.png
   :alt: Kdenlive-Title-Fading-Still.png
   :target: https://kdenlive.org/wp-content/uploads/2017/01/Kdenlive-Title-Fading.mp4


Notes
-----

These are the individual steps shown in this HOWTO video:

   1. Add a Composite & Transform transition to the title clip.
   2. First keyframe: set the opacity to 0%. This marks the beginning of the fade in (ramp up).
   3. Second keyframe: add a new keyframe where you want the title to be fully faded in, set the opacity to 100%. Set the type of the keyframe to Linear.
       * The rationale to set this keyframe to Linear is that otherwise Kdenlive (MLT) calculates a smooth curve fitting to the previous and following keyframe, causing the opacity value to overshoot. With a maximum possible opacity of 100% you won’t notice. However, when you use a maximum opacity of less than 100%, then this overshooting may become visible.
       * Ensure that the first keyframe is Smooth. You can only adjust the type of the first keyframes after you’ve added a second keyframe.
   4. Third keyframe: add another keyframe near the end where you want to start fading out the title. Leave the opacity at 100%. Set the keyframe type to Smooth.
   5. Fourth keyframe: add a final keyframe, where you set the opacity to 0%.

Done.

In case you are scratching your head now, why this mixture of smooth and linear interpolated keyframes? Then head over to our new article on :ref:`the_smooth_keyframe_interpolation`.

