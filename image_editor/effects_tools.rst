.. meta::
   :description: digiKam Image Editor Effects Tools
   :keywords: digiKam, documentation, user manual, photo management, open source, free, learn, easy, image, editor, blur, charcoal, solarize, vivid, neon, edges, lut3D, distortion, emboss, film, grain, oil, paint, rain, drops

.. metadata-placeholder

   :authors: - digiKam Team

   :license: see Credits and License page for details (https://docs.digikam.org/en/credits_license.html)

.. _effects_tools:

Effects Tools
=============

.. contents::

.. _effects_blur:

Blur FX
-------

The digiKam Blur FX is a series of blurring effects for digital still images.

With this filter set, you can transform an ordinary photograph into a work of art suitable for framing using blurring operations.

.. figure:: images/editor_blur_fx.webp
    :alt:
    :align: center

    The digiKam Image Editor Blur FX Tool

These are the blurring effects available:

    - **Zoom Blur**: blurs the image along radial lines starting from a specified center point. This simulates the blur of a zooming camera, thereby giving the photograph a dynamic expression as often seen in sport photography.

    - **Radial Blur**: blurs the image by rotating the pixels around the specified center point. This simulates the blur of a rotating camera.

    - **Far Blur**: blurs the image to simulate the effect of an unfocused camera lens. The subject seems to recede into the background.

    - **Motion Blur**: blurs the image by swishing the pixels horizontally. This simulates the blur of a linearly moving camera, i.e. like a shot taken from a car or train.

    - **Focus Blur**: blurs the image corners to reproduce the astigmatism distortion of a lens.

    - **Softener Blur**: blurs the image softly in the darker tones and strongly in the high lights. This gives photographs a dreamy and glossy soft focus effect (Hamilton effect). It's ideal for creating romantic portraits, glamour photography, or adding a warm and subtle glow.

    - **Shake Blur**: blurs the image by randomly moving the pixels simulating the blur of an arbitrarily moving camera.

    - **Smart Blur**: finds the edges of color in photograph and blurs them without muddying the rest of the image.

    - **Frost Glass**: blurs the image by simulating randomly dispersing light filtering through hoarse frosted glass.

    - **Mosaic**: blurs the image by dividing the photograph into rectangular cells and then recreates it by filling those cells with average pixel value.

.. warning::

    Some effects can take a long time to run and cause high CPU load. You can always abort an effect by pressing the **Abort** button during preview rendering.

.. _effects_charcoal:

Charcoal Drawing
----------------

The digiKam Charcoal is an effect filter that creates a charcoal sketch-like result.

The digiKam Charcoal filter uses the gradients of color and luminosity to produce a grey scale charcoal sketch. The lines defining the outline of the image are pronounced. Images with slowly changing gradients are not ideal for this effect. It is helpful to imagine what scene you would pick to do as a hand sketch yourself, in order to choose the image to start with.

.. figure:: images/editor_charcoal.webp
    :alt:
    :align: center

    The digiKam Image Editor Charcoal Tool

There are two sliders to control the effect on a scale of 1-100. The upper slider selects the **Pencil size**, whereas the second slider adjusts the contrast (**Smooth**).

.. note ::

    The result can be improved by adjusting the luminosity levels.

.. _effects_color:

Color Filter Effects
--------------------

The digiKam Color Effects tool provides four color effects: a Solarization effect, a Velvia filter, Neon effect, Edge filter, and Lut3D.

In the age of chemical image processing, solarizing (also known as Sabatier) was an effect created by exposing a partially developed print to a brief flash of light, then completing the development. The colored, darker areas shield the additional light from the sensitive photo layers, which has the net effect of making the lighter areas darker and colors being inverted during the second exposure. The result resembles a partially negative image. The tool allows to adjust the interesting effect smoothly.

.. _effects_solarize:

The Solarization Effect
~~~~~~~~~~~~~~~~~~~~~~~

The **Level** control helps to preview the solarization by simply increasing it. At about 50% intensity the image shows what was once chemically possible. If you further increase the effect it will finally become a negative image, a stage of inversion not achievable on photographic paper.

.. figure:: images/editor_solarize.webp
    :alt:
    :align: center

    The digiKam Image Editor Solarize Tool

.. _effects_vivid:

The Vivid Effect
~~~~~~~~~~~~~~~~

The vivid filter simulates what is known as *Velvia* effect. It is different from saturation in that it has a more pronounced contrast effect that bring colors brilliantly alive and glowing. Try it, it renders beautiful for many subjects.

Velvia is a brand of daylight-balanced color reversal film produced by the Japanese company Fujifilm. The name is a contraction of *Velvet Media*, a reference to its smooth image structure. Velvia has very saturated colors under daylight, high contrast. These characteristics make it the slide film of choice for most nature photographers. Velvia's highly saturated colors are, however, considered overdone by some photographers, especially those who don't primarily shoot landscapes. You can controls the Velvia intensity with the **level** setting.

.. figure:: images/editor_vivid.webp
    :alt:
    :align: center

    The digiKam Image Editor Vivid Tool

.. _effects_neon:

The Neon Effect
~~~~~~~~~~~~~~~

The neon filter simulates neon light along the contrast edges. The **Level** parameter controls the lightness of the result, whereas the **Iteraction** slider determines the thickness of the neon light. With big images, the filter might eat the CPU time for a moment.

.. figure:: images/editor_neon.webp
    :alt:
    :align: center

    The digiKam Image Editor Neon Tool

.. _effects_edges:

The Find Edges Effect
~~~~~~~~~~~~~~~~~~~~~

The find edges filter detects the edges in a photograph and their strength. With the **Level** parameter, a low value results in black, high-contrasted image with thin edges. A high value results in thick edges with low contrast and many colors in dark areas. **Iteration** allows to increase or decrease the frame presence in image.

.. figure:: images/editor_edges.webp
    :alt:
    :align: center

    The digiKam Image Editor Find Edges Tool

.. _effects_lut3d:

The Lut3D Effect
~~~~~~~~~~~~~~~~

The Lut3D filter coloring images by applying transformation based on a 3D lookup table. 

In the film industry, 3D lookup tables are used to map one color space to another. They are commonly used to calculate preview colors for a monitor or digital projector of how an image will be reproduced on another display device, typically the final digitally projected image or release print of a movie. A 3D LUT is a 3D lattice of output RGB color values that can be indexed by sets of input RGB colour values. Each axis of the lattice represents one of the three input color components and the input color thus defines a point inside the lattice. Since the point may not be on a lattice point, the lattice values must be interpolated; most products use trilinear interpolation.

The tool provide a list of Lut3D to apply on the image, including preview thumbnail of the effect. **Intensity** setting allows to adjust the colors overall of the effect on image.

.. figure:: images/editor_lut3d.webp
    :alt:
    :align: center

    The digiKam Image Editor Lut3D Tool

.. _effects_distortion:

Distortion FX
-------------

The digiKam Distortion FX is a series of distorting effects for digital still images.

With this filter set, you can transform an ordinary photograph into a work of art suitable for framing using distorting operations.

.. figure:: images/editor_distortion_fx.webp
    :alt:
    :align: center

    The digiKam Image Editor Distortion FX Tool

These are the distorting effects available:

    - **Fish Eyes**: warps the photograph around a 3D spherical shape to reproduce the common photograph 'Fish Eyes' effect.

    - **Twirl**: spins the photograph to produce a Twirl pattern.

    - **Cylinder Horizontal**: warps the photograph around a horizontal cylinder.

    - **Cylinder Vertical**: warps the photograph around a vertical cylinder.

    - **Cylinder H/V**: warps the photograph around a 2 cylinders, vertical and horizontal.

    - **Caricature**: distorts photograph with 'Fish Eyes' effect inverted.

    - **Multiple Corners**: splits the photograph like a multiple corners pattern.

    - **Waves Horizontal**: distorts the photograph with horizontal waves.

    - **Waves Vertical**: distorts the photograph with vertical waves.

    - **Block Waves 1**: divides the image into cells and makes it look as if it is being viewed through glass blocks.

    - **Block Waves 2**: like Block Waves 1 but with another version of glass blocks distortion.

    - **Circular Waves 1**: distorts the photograph with circular waves.

    - **Circular Waves 2**: other variation of Circular Waves effect.

    - **Polar Coordinates**: converts the photograph from rectangular to polar coordinates.

    - **Unpolar Coordinates**: Polar Coordinate effect inverted.

    - **Tiles**: splits the photograph into square blocks and move them randomly inside the image.

.. warning::

    Some effects can take a long time to run and cause high CPU load. You can always abort an effect by pressing **Abort** button during preview rendering.

.. _effects_emboss:

Emboss Image
------------

The digiKam Emboss filter sculptures your image into 3-D as if it were stamped into wax.

The digiKam Emboss filter is a quick tool to render your images in a 3-D effect. It works particularly well on images with simple structure where color is not the most important content. The filter uses the difference between colors and luminosity to convert it into a grey, moon-like landscape lit from 10 o'clock.

The **Depth** control allows to define the contrast of the filtering. A value of 30 (10%) is the standard.

.. figure:: images/editor_emboss.webp
    :alt:
    :align: center

    The digiKam Image Editor Emboss Tool

.. _effects_filmgrain:

Film Grain
----------

The digiKam Filmgrain filter reproduces traditional film grain techniques of high speed films.

This filter is an easy tool to produce film grain on your images as known from classical high speed film material as, for example, the famous B/W KodaK Tri-X. In order to increase film sensitivity, manufacturers employed larger silver grains in the photo emulsion.

The film grain effect gives your shot a particular mood or seems to transport it in time. The treated image acquires a timeless atmosphere, detached from every day life. If you want that gritty, art-house, street-photography grainy film look, especially in monochromatic photos, use this filter.

.. figure:: images/editor_film_grain.webp
    :alt:
    :align: center

    The digiKam Image Editor Film Grain Tool

As common settings, a slider allows control the **Grain size** and you can turn on the granularity simulating a photographic distribution. For **Luminance**, **Chrominance Blue**, and **Chrominance Red** channels, you can adjust the grain **Intensity** with a effects on **Shadows**, **Middletones**, and **Highlight**.

.. note::

    If you process a black and white image, the grain needs to be applied only on **Luminance** channel.

.. _effects_oilpaint:

Oil Paint
---------

The digiKam Oil Paint filter gives your image the look of an oilpainting.

This filter gives your digital images a nice oilpainting-like look. Images of nature and still lives are well suited for this effect.

.. figure:: images/editor_oil_paint.webp
    :alt:
    :align: center

    The digiKam Image Editor Oil Paint Tool

There are two sliders to control the effect. The upper slider selects the **Brush Size** between 1 and 5. Bigger brushes are better suited for large images. **Smooth** controls the smoothness or, seen from the other end, the jaggedness.

.. _effects_raindrops:

Rain Drops
----------

The digiKam Raindrops filter puts beautiful raindrops on your image.

The Raindrops is nice little tool to put raindrops onto your images. Naturally, it renders your image in a kind of wet look.

Three sliders give you control over the effect filter: **Drop size** obviously allows to change the size of the drops. As the drop size doesn't automatically scale with the image size it is often necessary to reduce the size for small images. **Number** changes the number and density of drops. **Fish eye** changes the optical effect of the drops across the image.

.. note::

    You can keep a zone clear of raindrops with the digiKam Image Editor **Select** tool. Selecting the area to avoid (for example a face) before launching the Raindrops filter will keep it free from rain drops.

.. figure:: images/editor_rain_drops.webp
    :alt:
    :align: center

    Rain Drops Tool Applying Effect to Whole Image Excepted on Dog Face
