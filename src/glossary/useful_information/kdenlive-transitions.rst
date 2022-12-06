.. metadata-placeholder

   :authors: - TheDiveO
             - Eugen Mohr
             
   :license: Creative Commons License SA 4.0

.. moved from https://kdenlive.org/en/project/kdenlive-transitions/   

.. _kdenlive_transitions:

Kdenlive transitions
====================

Depending on their background in video editing, users may find **Kdenlive transitions** somewhat confusing. Hopefully, this article clears up this confusion surrounding Kdenlive transitions, at least to some degree.


Kdenlive Transitions: 3-in-1
----------------------------

In Kdenlive, **transitions** can roughly be classified into three different types as follows:

+----------------------------+----------------------------------------------------------------------+
| Type of Transition         | Description                                                          |
+----------------------------+----------------------------------------------------------------------+
| 1. Clip-to-Clip Transition | Gradually replaces one clip by another clip. Has exactly two implicit| 
|                            | keyframes, for start and end. This is what many users usually        |
|                            | understand transitions to be.                                        |
+----------------------------+----------------------------------------------------------------------+
| 2. Dynamic Compositing     | For combining two clips, and the way of combination may vary with    |
|                            | time. Supports user-defined keyframes that allow to control at least |
|                            | certain parameters.                                                  |
+----------------------------+----------------------------------------------------------------------+
| 3. Layer Compositing       | For combining two clips in a constant, static way: much like you     |
|                            | see layer compositing in image tools. As no keyframes are supported, | 
|                            | this type of compositing is static, thus invariant of time.          |
+----------------------------+----------------------------------------------------------------------+

Historically, Kdenlive borrows the term **transition**, with its 3-fold meaning, directly from the `multimedia engine MLT <https://mltframework.org/>`_. MLT does all the video and audio processing according in your timeline. In the MLT universe, transitions basically «merge» video frames from upper tracks with video frames from lower tracks, producing result frames.

In contrast, many users experienced in video editing have come to know transitions as a mechanism to transition between to adjacent clips. However, Kdenlive doesn’t even support such in-track transitions. Instead you need to place these clips on separate tracks, and then you add a Kdenlive transition for combining these clips in some clever way.


1. Clip-to-Clip Transitions
---------------------------

Let’s start with those **archetypical transitions** most users would probably expect when they hear the word *transition*: the dissolve, slide, and wipe transitions. See for yourself…

.. container:: clear-both

   .. image:: /images/transition-dissolve.png
      :align: left
      :alt: transition-dissolve
      :width: 350px

   **Dissolve**: gradually transitions from one clip to another. So it’s kind of fading between the two clips. (See also the Wikipedia article on `Dissolve. <https://en.wikipedia.org/wiki/Dissolve_%28filmmaking%29>`_) 

.. container:: clear-both

   .. image:: /images/transition-slide.png
      :align: left
      :alt: transition-slide
      :width: 350px

   **Slide**: gradually replaces one clip by another clip, by traveling from one side of the frame to another (See also the Wikipedia article on `Wipe <https://en.wikipedia.org/wiki/Wipe_%28transition%29>`_.)

.. container:: clear-both

   .. image:: /images/transition-wipe.png
      :align: left
      :alt: transition-wipe
      :width: 350px

   **Wipe**: one clip gradually replaces another clip, often in form of some shape. (See also the Wikipedia article on `Wipe <https://en.wikipedia.org/wiki/Wipe_%28transition%29>`_.)

.. rst-class:: clear-both

These three transitions don’t offer any (user-) keyframes. Instead, their *start* and *end* keyframes are *implicit* and fixed to the *start* and *end* of the transition respectively.

**Because Kdenlive always uses two separate tracks for transitions**, there’s a peculiarity to note: normally, as time moves forward in the timeline, these transitions change (or kind of fade) from the clip on the upper track to the clip on the lower track. The somewhat strangely named transition parameter **Reverse** allows you to switch the track roles: if **Reverse** is checked, then these transitions change from the lower track to the upper track, as time progresses.

Simply put:

    ▼ **Reverse off**: transition from upper track to ▼ lower track.

    ▲ **Reverse on**: transition from lower track to ▲ upper track instead.

2. Dynamic Compositing Transitions
----------------------------------

.. image:: /images/transition-compositing-galore.png
      :alt: transition-compositing-galore

To some degree, Kdenlive supports (simple) compositing in its timeline. Actually, even this simple compositing can get you a long way in many projects (as the above screenshot may hint at). Kdenlive currently offers the following (keyframable) compositing transitions:

   * **Affine** – allows to size, rotate, skew, and position. Together with keyframes, this transition is really versatile. Its only drawbacks are: it is slower than other complex transitions (due to the affine transformation), and it doesn’t support wipes (which only **Composite** and **Region** support in this class of transitions).
   * **Cairo Blend** – a simple compositing transition, supporting several compositing modes. In addition, the opacity of the upper frames can be controlled. This transition also supports keyframes.
   * **Cairo Affine Blend** – this has the functionality of both **Affine** and **Composite**: position, rotate (you can even control the center of rotation!), and finally skew. And all this is keyframable.
   * **Composite** – allows keyframed dissolves, wipes, and swipes; and all this in the same transition. In contrast to Affine, it does not support rotation or skewing. The downsides of Composite are: luma bleed, and less precise position control. When compared to Affine, the Composite transition is much faster, albeit at the cost of luma bleed.
   * **Composite & Transform** – this is a rather new transition that made its debut with Kdenlive 16.04. It allows to easily composite clips onto each other (supported several compositing modes), as well as to move the upper track clips. However, there is neither support for scaling, nor for rotation, but for dynamic opacity. But keyframes are supported. In those situations, use **Affine** or **Cairo Affine Blend** instead.
   * **Region** – like **Composite**, but restricted to a region in form of a matte. In the **Region** transition properties, this matte is called the **Transparency clip**.

**Fun Fact**: Admittedly, MLT and Kdenlive offer a lot of choice here; probably too much choice. A non-representative poll in our official Kdenlive G+ community showed that **Composite is used the most often**, followed by **Composite & Transform** and **Affine**.

.. _composite_and_transform:

Compositing with Transparency
-----------------------------

**Composite & Transform** is Kdenlive’s new darling, as it will make life much easier for many, if not most Kdenlive users. When compared to **Affine**, this new transition is also faster in the standard compositing cases. Moreover, **Composite & Transform** defaults to the alpha compositing mode (paint) *over* – which is what probably most users need when compositing. In contrast, **Affine** uses the atop alpha compositing strategy that can drive unexpected users mad. But see for yourself…

.. container:: clear-both

   .. image:: /images/composite-transition-over.png
      :align: left
      :alt: composite-transition-over
      :width: 350px

   **Composite & Transform**: whatever semi or non-transparent is in the frame from the upper track, it will be painted over the frame from the lower track. Hence the name of this compositing mode: over. Please note: in the transition properties, this mode is to be found as **Compositing**: **Alpha Blend** instead.

   In addition, **Composite**, **Cairo Blend**, and **Cairo Affine Blend** also use the same over compositing strategy, as Composite & Transform does. For **Cairo Blend** and **Cairo Affine Blend** this **Blend mode** is called **Normal** instead.

.. container:: clear-both

   .. image:: /images/affine-transition-atop.png
      :align: left
      :alt: affine-transition-atop
      :width: 350px

   **Affine**: as the simple rule of thumb, transparency is solely controlled by the *lower* track. Any transparency information from the upper track simply gets completely ignored. In consequence, if your lower frame has regions of full transparency, whatever falls within them on the upper frame will be invisible! You can see this result also in the screenshot.

   At least at this time, **Composite & Transform** does not support this alpha handling as **Affine** does.

.. rst-class:: clear-both



Please see also for further information:

   * our separate Kdenlive article on :ref:`compositing_with_transparency`.
   * the Wikipedia article on `alpha compositing <https://en.wikipedia.org/wiki/Alpha_compositing>`_.
   * the SVG Open 2015 paper by Craig Northway on `understanding compositing and color extensions in SVG 1.2 in 30 minutes! <http://www.graphicalweb.org/2005/papers/abstractsvgopen/index.html>`_ – especially the Porter Duff operator table in chapter 6 with resulting alpha calculation column.


3. Layer Compositing Transitions
--------------------------------

This third kind of Kdenlive/MLT transitions mostly **work similar to layer modes in image editors** (such as `GIMP <https://www.gimp.org/>`_`). **These static layer compositing transitions do not have any parameters at all**. This category actually has the most Kdenlive transitions to offer:

Layer Compositing
^^^^^^^^^^^^^^^^^


    * Addition
    * Addition Alpha
    * Burn
    * Color Only
    * Darken
    * Difference
    * Divide
    * Dodge
    * Grain Handling: Extract / Merge
    * Hardlight / Overlay
    * Hue
    * Lighten
    * Multiply
    * Overlay / Hardlight
    * Saturation
    * Screen
    * Softlight
    * Substract
    * UV Map
    * Value
    * Video Quality Management

Alpha Compositing
^^^^^^^^^^^^^^^^^


    * Alpha atop
    * Alpha in
    * Alpha out
    * Alpha over
    * Alpha XOR
    * Matte

.. note::

   Kdenlive’s (or, MLT’s) fixed compositing transitions don’t have a transparency parameter. To some extent, you may substitute the **Cairo Blend** transition, which has an opacity parameter.

.. note::

   Users are often asking for **Kdenlive support of in-track transitions** (Dissolve, Slide, Wipe). Unfortunately, due to the way Kdenlive’s multimedia engine MLT works, this requires a large amount of code rewrite, not to mention extensive testing afterwards to ensure the expected stability. Due to our limited developer resources, **in-track transitions are thus not on our near-term roadmap**. We will gladly accept coding help, so if you are willing to accept this challenge, please let us know! 

.. versionadded:: 21.08

In-track or same-track transition is implemented with Kdenlive 21.08.
