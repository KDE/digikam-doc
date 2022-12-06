.. metadata-placeholder

   :authors: - Claus Christensen
             - Yuri Chornoivan
             - Ttguy (https://userbase.kde.org/User:Ttguy)
             - Bushuev (https://userbase.kde.org/User:Bushuev)
             - Marko (https://userbase.kde.org/User:Marko)
             - TheMickyRosen-Left (https://userbase.kde.org/User:TheMickyRosen-Left)

   :license: Creative Commons License SA 4.0

.. _keysplillm0pup:

Key Spill Mop Up
================

.. contents::

.. warning::

   This page is outdated. You may find the new one here: :ref:`key_spill_mop_up`.

This effect is used when using chroma keying (otherwise known as greenscreen or :ref:`blue_screen` effect). Its purpose is to compensate for the fact that sometimes the color from the green or blue screen reflects onto the subject and will make them a shade of blue or green - especially around the edges. This is known as "keyspill". This effect can attempt to compensate for this issue.

The effect may be found in the :ref:`misc` group or in the :ref:`alpha_manipulation` group (version >= 0.9.3)


Tutorial
--------

This tutorial shows usage of the following effects: keysplillm0pup, blue screen, alpha operations - shrinkhard and denoiser

https://youtu.be/l43Hz7YEcYU


Details
-------

The :file:`README` for the keyspillm0pup is this:

DESCRIPTION:

After some experimentation with chroma keying, it looked to me that there is no single method of key cleaning, that works in all situations, like keyspill on bright, keyspill on dark, etc. So I included several cleaning options, which can be used alone or in combination. In short, it offers three ways of pixel selection (masking), that can be combined with four types of color changing operations. The three selection / masking modes are based on:

* similarity to key color
* transparency
* closeness to the edge

and the four things that can be done to the selected pixels are:

* move away from the key color (De-Key)
* move towards an target color (Target)
* desaturate
* luma (brightness) adjust.

MASKS:

Color difference masks are based on the color of the image, and do not depend on the alpha from the preceding keying, except for ignoring the 100% transparent areas, to increase speed.

Transparency and Edge masks are based on the alpha channel from the preceding keying operation. Transparency masks will affect only the parts that are neither 100% opaque nor 100% transparent, based on the alpha values from the preceding keying operation. The effect will be proportional to the transparency.

.. note::

   If a "hard key" was used in the preceding keying, there will be no areas that T operations could affect. Edge masks will affect only pixels close to the edge, with the effect diminishing away from the edge. The outer edge is the edge of the fully opaque part, where the alpha from the preceding keying is 1.0 (255).

.. note::

   The edge masking algorithm is not yet what I would like it to be. I will have to look some more into this, and improve it, so consider it a "temporary solution" that will change in the future.

All masks can be further pruned with two parameters: an "hue gate", which will limit the mask to hues close to the key hue, and an "saturation threshold", which will limit the mask to areas with color saturation above a threshold.

CASCADING:

This plugin can be cascaded, but it is not possible to get the same color based mask in the second instance, because the colors will be changed by the first instance. To enable two operations with the same mask, each plugin instance can do two operations. With transparency and edge masks, cascading is a bit easier. If the hue gate and saturation threshold are not used, transparency and edge masks can be exactly the same in cascaded plugins.

PARAMETERS:

Key color: This should be the same or similar to the key color used for the preceding keying operation.

Target color: This is only used when "Target" operation is used with one of the masks. The colors in the affected areas will be moved towards this color, according to the "Amount" parameter.

Mask type: Selects the type of mask that will determine where the color altering operations will occur.

Tolerance: For the color difference mask, the range of colors around the key, that will be 100% affected. For the transparency mask, the "amplification". For the edge mask, the width of the affected area.

Slope: For the color difference mask, the range of colors outside of "Tolerance", that will be gradually less affected. No function for the transparency and edge masks.

Hue gate: Reduces the mask according to difference from key hue, to prevent change to pixels that are within the mask, but not polluted by key.

Saturation threshold: Reduces the mask according to color saturation, to avoid affecting the neutral areas.

Operation 1: Selects which of the four possible operations will be done on the mask-selected pixels. Apart from no operation, there are four possibilities: De-key, Target, De-saturate and Luma adjust.

Amount 1: The amount of the selected operation 1, how much the colors will change.

Operation 2, Amount 2: Enable a second operation to be performed with the same mask.

Show mask: This will show the selected mask as a greyscale image, to help with fine tuning of the masks. Should be OFF for the final render.

Mask to Alpha: Copies the active mask to the alpha channel. For all normal spill cleaning operations, this should be OFF. By setting it ON, the keyspillm0pup itself can be used as a keyer, or to generate some special effects.

