.. meta::
   :description: The digiKam Panorama Creator
   :keywords: digiKam, documentation, user manual, photo management, open source, free, learn, easy, panorama, assembly, stitch

.. metadata-placeholder

   :authors: - digiKam Team

   :license: see Credits and License page for details (https://docs.digikam.org/en/credits_license.html)

.. _pano_creator:

Panorama Creator
================

.. contents::

.. figure:: images/pano_creator_selection.webp
    :alt:
    :align: center

    The Panoramic JPEG Files Selected from Icon-View (7x24Mpx Images taken with Sony A77 - 59 Mb)

A panorama is a composition of photo taken in the same conditions with the same camera/lens. The camera turn around the same point of view to shot with many photos a wide-angle view which is a representation of a large physical space. Images must be taken with superimposed area on the borders. Algorithm will try to found the common portions of images to join and merge contents. To be sure about stability you can use a tripod especially with complex compositions. The tool allows to assemble shots taken horizontally, vertically, or as a matrix. 

.. note::

    Take a care that target panorama is a huge amount of data and require a lots of memory to be processed.

Select the images that you want to stitch and go to :menuselection:`Tools --> Create Panorama` a wizard dialog will open up as below.

.. figure:: images/pano_creator_01.webp
    :alt:
    :align: center

    The Panorama Creator Wizard with the Huggin Components Detection

This plugin is based on the `Hugin command line tools <https://hugin.sourceforge.io/>`_ to analyze and assemble the items. If all software components are found on your system, just select the output format that you prefer to render the panorama and click on **Next** button. The page below must appears:

.. figure:: images/pano_creator_02.webp
    :alt:
    :align: center

    The Panorama Creator Wizard with the List of Items to Assemble

Arrange the images in correct order if they are not, using the **up** and **down** buttons. Use the buttons with the **plus** and **minus** symbols to add or remove items. If you want to render a 360° panorama, the first image from the list will be the item placed on the center of the panorama. When all is done, click on **Next** button.

.. figure:: images/pano_creator_03.webp
    :alt:
    :align: center

    The Panorama Creator Wizard Pre-Processing Stage

The option **Detect moving skies** allows an automatic detection of clouds to prevent wrong key-points matching between images due to moving shapes. To be more precise, during the control points selection, the process discards any points that are associated to a possible cloud. This is useful to prevent moving clouds from altering the control points matching process do by the algorithms. Depending of the scene contents, turn on the option and press **Next** button to pre-process items.

.. figure:: images/pano_creator_04.webp
    :alt:
    :align: center

    The Panorama Creator Wizard Optimizations Stage

The optimizations page includes another option named **Level horizon** dedicated for horizontal scene. Turn on this setting to detect the horizon and adapt the projection accordingly. The detected horizon will be an horizontal line in the final panorama. If you scene is a vertical composition, you can ignore this setting. Click on the **Next** button to preview the result.

.. figure:: images/pano_creator_05.webp
    :alt:
    :align: center

    The Panorama Creator Wizard Preview Stage

In this page the images are assembled, you can judge of the result, and crop the contents to drop black frames around your scene. By default, the tool is able to detect automatically the effective region of the panorama. If you move the mouse over the preview canvas, a toolbar must appears on top left corner to **Zoom In**, **Zoom Out**, and **Zoom to Fit** on the image. With a right click with the mouse, you can re-define a new crop area. When all in fine, click on **Next** button to process final composing of the panorama.

.. figure:: images/pano_creator_06.webp
    :alt:
    :align: center

    The Last Page of the Panorama Creator Wizard

After a long computation, panorama stitching will be complete and the tool will propose a template name for the target file. If you want you can also save your project compatible with Hugin. Click on **Finish** button and you will see the output in the same **Album** as your original pictures.

.. note::

    The 7x24Mpx images (59 Mb) used as example in this section of this manual give one single post-processed panoramic JPEG file of 82 Mpx (23 Mb).

    .. figure:: images/pano_creator_final.webp
        :alt:
        :align: center

        The Assembled Panoramic JPEG Files Displayed in digiKam
