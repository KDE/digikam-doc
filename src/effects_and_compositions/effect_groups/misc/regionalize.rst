.. metadata-placeholder

   :authors: - Yuri Chornoivan
             - Ttguy (https://userbase.kde.org/User:Ttguy)

   :license: Creative Commons License SA 4.0

.. _regionalize:

Regionalize
===========

.. contents::

Apply subeffects to a region defined by a clip's alpha channel.

This is the `Region <https://www.mltframework.org/plugins/FilterRegion/>`_ MLT filter.

Arguments:

**File**  A file whose alpha channel will "shape" the region. The string "circle" is a shortcut but it requires pixbuf with the librsvg loader. The circle is automatically stretched to the region to create an ellipse.

**Region** Properties may be set on the encapsulated region transition. See "region" transition for details.

