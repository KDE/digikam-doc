.. metadata-placeholder

   :authors: - Simon Eugster <simon.eu@gmail.com>
             - Eugen Mohr

   :license: Creative Commons License SA 4.0

.. Following text is a copy of: https://web.archive.org/web/20160319081747/https://kdenlive.org/users/granjow/introducing-color-scopes-histogram

.. _introducing_color_scopes:

Introducing Color Scopes
========================

*Submitted by Granjow on Mon, 08/30/2010 - 23:10*

With kdenlive 0.7.8 I added some color scopes, used for displaying color information. In this section I will give a brief overviews over scopes in general and explain the most basic scope, the histogram, in detail.

**Color correction.** This is a really important topic in video editing. It starts with simple stretching of the tonal range if the brightness is not ideal, goes on with white balance to ensure that white remains white and not blue, and finally ends with creating looks which make your video look unique. (Remember the blueish `Minority Report <https://en.wikipedia.org/wiki/File:Minority_Report_bleached.jpg>`_? The contrasty `The Departed <https://web.archive.org/web/20160328033801/http://www.wbshop.com/product/code/1000121856.do>`_?)

For color correction we basically need two things, Effects for changing the colors and Scopes for monitoring the changes. The first scope I'm showing now is, as already mentioned, the histogram:

.. image:: /images/Kdenlive_Histogram.png
   :alt: kdenlive-histogram

Basic Scope Options
-------------------

Let's first take a look at the basic options available in all scopes.

.. image:: /images/kdenlive-scopes-basic-options.png
   :alt: kdenlive scopes basic options 

- *Auto Refresh* automatically refreshes the scope if the project/clip monitor changes. During the process of color correction you'll want to keep this option enabled. When not color correcting, it should be disabled as it usually heavily impacts the performance of playback. (There is a lot of calculations going on in the scopes.)
- *Realtime* tries to maintain a certain frame rate in the scopes by dropping part of the color information received (e.g. taking a look at every 8th pixel only instead of every single pixel).

Note that you can always update a scope by clicking on it.

So far about scopes in general. Now let's take a closer look at the :ref:`Histogram <histogram_working>`.