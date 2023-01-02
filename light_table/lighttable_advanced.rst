.. meta::
   :description: Overview to digiKam Light Table
   :keywords: digiKam, documentation, user manual, photo management, open source, free, learn, easy, light table, focus, points

.. metadata-placeholder

   :authors: - digiKam Team

   :license: see Credits and License page for details (https://docs.digikam.org/en/credits_license.html)

.. _lighttable_advanced:

Advanced Features
=================

.. contents::

.. _comparing_focuspoints:

Comparing The Focus Points
--------------------------

digiKam Light Table inherits of the **Preview Mode** capabilities as it share same tools used in background by **Main Window**. One very powerfull feature is the Focus Points visualization while comparing images side by side.

Camera can use some points (name auto focus points) on image to make the region around sharper. Besides, it blurs the futher region, in order to make an aristic product. These points are named AF points. They can be pre-defined by camera or by user, depend on model of camera. There are only two cases supported by digiKam for AF points: infocused and selected. Infocues points are the points sharpenned by camera, when selected points are the points expected to be clear by user. An point can be both in 2 cases (infocus-selected) or neither both (inactive).

.. figure:: images/light_table_comparing_focus_points.webp
    :alt:
    :align: center

    The digiKam Light Table Comparing Focus Points From a Serie Of Shots

Each point is not only a point on the image but a rectangle. FocusPoint is used to recognized focus region of image. This is a region where user expected to be clear. Using the focus points visualization while previewing image side by side allows to be sure that the best image was taken with right in-focus shot conditions.

To Show the focus points over the preview canvas, select **Show Focus Points** from context menu.

.. figure:: images/light_table_preview_context_menu.webp
    :alt:
    :align: center

    The digiKam Light Table Preview Canvas Context Menu
