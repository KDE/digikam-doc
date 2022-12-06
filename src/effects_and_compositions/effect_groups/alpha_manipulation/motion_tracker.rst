.. metadata-placeholder

   :authors: - frdbr (https://userbase.kde.org/User:frdbr)

   :license: Creative Commons License SA 4.0

.. _motion_tracker:

Motion Tracker
==============
.. versionadded:: 19.04.0

.. contents::

What is Motion Tracking?
------------------------

Motion tracking is the process of locating a moving object across time. Kdenlive uses `OpenCV (Open Source Computer Vision Library) <https://opencv.org/about/>`_ for motion detection.  

   -- `Wikipedia <https://en.wikipedia.org/wiki/Video_tracking>`_

.. image:: /images/motion_tracker.png
   :alt: motion tracker

How to track a region of a video? 
---------------------------------

The basic workflow for tracking a region consists of:

* Select the desired region to track on the Project Monitor. 
* Choose a tracking algorithm.
* Click on the Analyse button.

.. image:: /images/motion_tracking_face.png
   :alt: motion tracking face

.. image:: /images/motion-tracker-copy-keyframe.png
   :align: right
   :alt: motion-tracker-copy-keyframe

* When Analyse is done you can export the keyframes to the clipboard by click on |application-menu| and choose :menuselection:`Copy keyframes to clipboard`. See: :ref:`exchange_keyframes_across_effects`

.. rst-class:: clear-both

Tracking algorithms
-------------------
KCF
^^^

**Kernelized Correlation Filters**

**Pros:** Accuracy and speed are both better than MIL and it reports tracking failure better than MIL.

**Cons:** Does not recover from full occlusion. 

CSRT
^^^^

In the Discriminative Correlation Filter with Channel and Spatial Reliability (DCF-CSR), we use the spatial reliability map for adjusting the filter support to the part of the selected region from the frame for tracking. This ensures enlarging and localization of the selected region and improved tracking of the non-rectangular regions or objects. It uses only 2 standard features (HoGs and Colornames). It also operates at a comparatively lower fps (25 fps) but gives higher accuracy for object tracking.

MOSSE
^^^^^

**Minimum Output Sum of Squared Error**

MOSSE uses an adaptive correlation for object tracking which produces stable correlation filters when initialized using a single frame. MOSSE tracker is robust to variations in lighting, scale, pose, and non-rigid deformations. It also detects occlusion based upon the peak-to-sidelobe ratio, which enables the tracker to pause and resume where it left off when the object reappears. MOSSE tracker also operates at a higher fps (450 fps and even more).

**Pros:** It is as accurate as other complex trackers and much faster.

**Cons:** On a performance scale, it lags behind the deep learning based trackers.

MIL
^^^

**Pros:** The performance is pretty good. It does a reasonable job under partial occlusion.

**Cons:** Tracking failure is not reported reliably. Does not recover from full occlusion.

MedianFlow
^^^^^^^^^^

**Pros:** Excellent tracking failure reporting. Works very well when the motion is predictable and there is no occlusion.

**Cons:** Fails under large motion.

`DaSiam <https://arxiv.org/pdf/1808.06048.pdf>`_
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The DaSiamRPN visual tracking algorithm relies on deep-learning models to provide extremely accurate results.

In order to use the DaSiam algorithm you need to download the AI models and place them in: 

   **Linux**

   *$HOME/.local/share/kdenlive/opencvmodels*.

   Flatpak

   *$HOME/.var/app/org.kde.kdenlive/data/kdenlive/opencvmodels*

   **Windows**

   *%AppData%/kdenlive/opencvmodels*

   Press :kbd:`Win + R` (:kbd:`Windows` key and :kbd:`R` key simultaneously) and copy **%AppData%/kdenlive/**. Then create the folder `opencvmodels`

1. https://files.kde.org/kdenlive/motion-tracker/DaSiamRPN/dasiamrpn_kernel_cls1.onnx
2. https://files.kde.org/kdenlive/motion-tracker/DaSiamRPN/dasiamrpn_kernel_r1.onnx
3. https://files.kde.org/kdenlive/motion-tracker/DaSiamRPN/dasiamrpn_model.onnx

Frame shape
-----------

soon

Shape color
-----------

soon

Blur type
---------

.. image:: /images/object-obscure.gif
   :alt: object-obscure in action

Four blur types are available: Median blur, Gaussian blur, Pixelate, Opaque fill