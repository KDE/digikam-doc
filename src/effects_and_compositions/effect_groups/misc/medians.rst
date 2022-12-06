.. metadata-placeholder

   :authors: - Yuri Chornoivan
             - Marko (https://userbase.kde.org/User:Marko)
             - Roger (https://userbase.kde.org/User:Roger)

   :license: Creative Commons License SA 4.0

.. _medians:

Medians
=======

.. contents::

This filter implements several median type filters.

INTRODUCTION:

Median is a quite popular non-linear filter in image processing. Most often it is used to remove impulsive noise, like "salt &  pepper" noise, "dead" and "hot" pixels, dirt on film, etc. This is because it behaves kind of "inversely" compared to linear denoisers. The more a bad pixel stands out from the surrounding area, the bigger residual it will leave with a linear filter - but the more probably it will be eliminated by the median.

The down side is that the median operation is quite slow. As an order-statistic filter, it is similar to sorting, that must be done for each pixel, so using a fast algorithm is very important. For the small medians, the algorithms of the type described in `this page <http://ndevilla.free.fr/median/median/src/optmed.c>`_ are used here, with some small modifications for a further slight improvement in speed. For the "Variable size" median, code from  [1]_  is used. The compound filters (ArceBI, ML3D, ML3dEX) are made according to the formulas given in the corresponding work [2]_. For more info on median filtering see `Wikipedia article <https://en.wikipedia.org/wiki/Median_filter>`_.

IMPLEMENTED ALGORITHMS:

**Cross5**
  Median of the pixel with its top, bottom, left and right neighbor.

**Square3x3**
  Median of the pixel with the surrounding 8 pixels. (3x3 box)

**Bilevel**
  First, make cross5 median, then make median of the pixel with its four diagonal neighbors, and finally take the median of the pixel and the two previously calculated medians. Slightly better preserves detail than the simple medians above.

**Diamond3x3**
  Takes median of the pixel with 12 neighboring pixels arranged in a diamond pattern.

**Square5x5**
  Median of the pixel with the 5x5 surrounding box.

**Temp3**
  Temporal only median of three frames. Can be used to reduce single frame time-impulsive noise like photoflash. Delays the video by 1 frame.

**Temp5**
  Temporal only median of five frames. Can be used to reduce double frame time-impulsive noise, but the artifacts on fast moving objects are stronger than with temp3. Delays the video by 2 frames.

**ArceBI**
  Spatio-temporal multilevel median, as described by Arce. See the corresponding work [2]_. Delays the video by 1 frame.

**ML3D**
  Spatio-temporal multilevel median, as described by Alp. See the corresponding work [2]_. Delays the video by 1 frame.

**ML3dEX**
  Spatio-temporal multilevel median. Further development of ML3D by Kokaram, see the corresponding work [2]_. Delays the video by 1 frame.

**VarSize**
  Simple spatial only median in a user selected size square box around each pixel. The effect could be described as "quasi edge preserving, corner rounding, small stuff eliminator". Or maybe just an "artsy blur".

PARAMETERS:

**Type**
  Selects one of the eleven algorithms.

**Size**
  Only active when "VarSize" type is selected. Determines the size of the square area over which the median is taken.


.. [1] Simon Perreault, Patrick Hebert: Median filtering in constant time, `PDF version <https://nomis80.org/ctmf.pdf>`_, `HTML version <https://nomis80.org/ctmf.html>`_

.. [2] `Anil Christopher Kokaram: Motion Picture Restoration, Ph.D. thesis <https://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.36.9618&rep=rep1&type=pdf>`_

