.. meta::
   :description: The digiKam Exposure Blending Tool
   :keywords: digiKam, documentation, user manual, photo management, open source, free, learn, easy, exposure, blending, bracketing

.. metadata-placeholder

   :authors: - digiKam Team

   :license: see Credits and License page for details (https://docs.digikam.org/en/credits_license.html)

.. _expo_blending:

Exposure Blending
=================

.. contents::

No matter how good your camera is, taking a well-exposed photo of a high-contrast scene like a black bird on snow can be really tricky. Even if you switch to the manual mode and tweak the exposure settings, there is still a risk that you will end up with a shot containing under or over-exposed areas. One way to solve this problem is to use the digiKam Exposure Blending. This technique involves taking several shots of the same scene or subject with different exposures (**bracketing**) and then fusing these shots into one perfectly exposed photo.

While exposure blending sounds simple in theory, achieving usable results can be a rather laborious and time-consuming process. Fortunately, digiKam can do the donkey job for you. The exposure blending tool relies on the `Hugin command line tools <https://hugin.sourceforge.io/>`_ for processing and fusing photos, so you must install it on your machine beforehand.

From Icon-View, select the photos you want to blend, and choose :menuselection:`Tools --> Blend Stacked Images`.

.. figure:: images/expo_blending_selection.webp
    :alt:
    :align: center

    The Bracketed JPEG Files Selected from Icon-View

This opens the Exposure Blending wizard that guides you through the entire process.

.. figure:: images/expo_blending_01.webp
    :alt:
    :align: center

    The Exposure Blending Wizard with the Hugin Components Detection

In the Set Bracketed Images window, add other photos if needed, and remove and rearrange the photos that are already in the list. Hit then the Next button to move to the next step

.. figure:: images/expo_blending_02.webp
    :alt:
    :align: center

    The Exposure Blending Wizard with the List of Items to Merge

digiKam can align the selected photos before blending them. This feature can come in handy if you took the photos without a tripod. If this is the case, tick the Align bracketed images check box, and press Next to start the pre-processing.

.. figure:: images/expo_blending_03.webp
    :alt:
    :align: center

    The Exposure Blending Wizard Pre-Processing Stage

Once digiKam is done, press Finish, and you will be automatically dropped into the Exposure Blending editor.

.. figure:: images/expo_blending_04.webp
    :alt:
    :align: center

    The Exposure Blending Editor

Hit the **Preview** button to see the blended photo in the preview pane. If you are not satisfied with the result, you can tweak the available options, including **Exposure**, **Saturation**, and **Contrast**. You can also exclude individual photos from the stack to improve the blending result. The clever part is that every time you tweak the settings and press the **Preview** button, digiKam generates a preview image which you can compare with the previous versions. You can then save all the generated versions, or save only the one you like most.

digiKam’s exposure blending tool is capable of producing rather impressive results, especially if you are not afraid of getting your hands dirty with manually tweaking the final results.
