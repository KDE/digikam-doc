.. meta::
   :description: digiKam Image Editor Workflow Tools
   :keywords: digiKam, documentation, user manual, photo management, open source, free, learn, easy, image, editor, workflow, tools, color, enhance, transform, effects, decorate

.. metadata-placeholder

   :authors: - digiKam Team

   :license: see Credits and License page for details (https://docs.digikam.org/en/credits_license.html)

.. _workflow_tools:

Workflow Tools
==============

.. contents::

A Standard Workflow Proposal
----------------------------

When performing a basic workflow, the primary areas for consideration are:

    1. Exposure: :ref:`White Balance <color_wb>`.

    2. Color: :ref:`White Balance <color_wb>`.

    3. Black and white points: :ref:`White Balance <color_wb>` or :ref:`Adjust Levels <color_levels>`.

    4. Contrast: :ref:`Adjust Curves <color_levels>`.

    5. Saturation: :ref:`White Balance <color_wb>`, :ref:`Vivid <effects_color>` or :ref:`Hue/Saturation/Lightness <color_hsl>`.

    6. Resizing (interpolation): :ref:`Change Size <transform_resize>`.

    7. :ref:`Sharpening <enhance_sharpen>`.

    8. :ref:`Digital Asset Management <organize_find>` (applying tags, captions, rating, geolocation, save under new name).

We recommend this sequence of image editing steps to ensure optimum photographic quality for the end product. In particular, never do sharpening before the last step. And we recommend using a lossless format like PNG or TIFF for storing photographs. Otherwise you'll lose a bit every time you save the results. If you can afford it, use 16 bit/channel for your best shots. If you want to change color space, in particular if you want to work in CIEL*a*b, 16 bit per channel are required to avoid truncation effects.

If you swap step 4. and 5., which is well possible if the initial contrast is already very good, you can do the first 4. adjustment in the same tool, the **White Balance**.

Many of the tools you may need for photographic editing are included with digiKam. Their description follows here.

Common Editing Tools Features
-----------------------------

All Image Editor tools like Sharpen, Blur, Noise Reduction, Refocus, Unsharp Mask, etc. use a common dialog style that previews the effect before applying the filter to the current image. Below you see the **Solarize** tool in action using this common dialog layout:

.. figure:: images/editor_commondialogtools.webp
    :alt:
    :align: center

    The Solarize Effect is a Common Tool to Edit Photograph

See the list of common areas available in all tools:

    - (1): The seven buttons to the top left select the comparison style of the preview area. The modes are:

        - **Original** image.

        - **Split vertically without duplication**: The left area shows the original whereas the right side shows the filter applied to the continuation of the selected zoom.

        - **Split horizontally without duplication**: The top area shows the original whereas the lower area shows the filter applied to the continuation of the selected zoom.

        - **Split vertically**: The left area shows the original and the right one the filter effect for comparison.

        - **Split horizontally**: The top area shows the original and the lower one the filter effect for comparison.

        - **Effect preview**: This is a live effect preview without comparison.

        - **Mouse over** style: preview when mouse is off the preview (in the settings area), otherwise shows original.

    - (2): There are two buttons that can be toggled to show **over-exposure** or **under-exposure**. The colors can be customized in the :ref:`Editor Window Settings <editor_settings>` from Setup dialog.

    - (3): The **preview** area. Click and drag with the mouse to move it on the image. The preview area on the left of dialog is updated accordingly.

    - (4): The filter or tool **settings** area.

    - (5): The **zoom** slider and buttons to change the canvas and preview zoom level.

    - (6): There is a **progress indicator** for tool with involved calculations at processing stage, else the current **file-name** is displayed.

The digiKam tool set are:

    - Image Color

        - :ref:`Encoding Depth <color_depth>`

        - :ref:`Color-Space Converter <color_cm>`

        - :ref:`Auto Correction <color_auto>`

        - :ref:`Brightness / Contrast / Gamma <color_bcg>`

        - :ref:`Hue / Saturation / Lightness <color_hsl>`

        - :ref:`Colors Balance <color_balance>`

        - :ref:`Adjust Levels <color_levels>`

        - :ref:`White Balance <color_wb>`

        - :ref:`Curves Adjust <color_curves>`

        - :ref:`Channels Mixer <color_mixer>`

        - :ref:`Black and White <color_bw>`

        - :ref:`Simulate Infrared Film <color_infrared>`

        - :ref:`Invert Colors <color_invert>`

    - Image Enhancement

        - :ref:`Sharpening (sharpen, unsharp mask, refocus) <enhance_sharpen>`

        - :ref:`Blur Tool <enhance_blur>`

        - :ref:`Red Eyes Removal <enhance_redeyes>`

        - :ref:`Local Contrast <enhance_localcontrast>`

        - :ref:`Noise Reduction <enhance_nr>`

        - :ref:`Hot Pixel Correction <enhance_hotpixels>`

        - :ref:`Lens Distortion Correction <enhance_lensdistortion>`

        - :ref:`Photograph Restoration <enhance_restoration>`

        - :ref:`Vignetting Correction Tool <enhance_vignetting>`

        - :ref:`Lens Auto-Correction Tool <enhance_lensauto>`

    - Image Transformation Tools

        - :ref:`Crop Tool <transform_crop>`

        - :ref:`Change Size <transform_resize>`

        - :ref:`Liquid Rescale <transform_liquidrescale>`

        - :ref:`Free Rotation <transform_freerotation>`

        - :ref:`Perspective Adjustment <transform_perspective>`

        - :ref:`Shearing Tool <transform_shear>`

    - Image Decoration

        - Add Border

        - Insert Text

        - Apply Texture

    - Special Effect Filters

        - Color Effects

        - Add Film Grain

        - Simulate Oil Painting

        - Simulate Charcoal Drawing

        - Emboss Photograph

        - Distortion FX

        - Blur FX

        - Add Rain Drops

.. _rawprocessing_workflow:

Raw Workflow
------------

A typical RAW workflow with digiKam may follow these steps:

    - Setting up the RAW conversion and color management preferences:

        - Get the ICC color profiles for the camera, display and printer.

        - Setup digiKam correctly defining a color work space.

    - Camera whitepoint setting.

    - Demosaicing (includes interpolation, noise filtering and chromatic aberration correction).

    - Conversion to a color space.

    - Gamma correction, tone mapping.

    - Color profile assignment.

    - Dynamic range expansion (optional).

    - Continue with standard workflow.

From there everything is simple, select a RAW image and open it in the editor. The Raw Import tool will be displayed after the image has been processed in order to adjust color rendering. Without color management all images are very dark, this is normal. You can experiment the various profiles you have in order to select the best input profile according to your image (some tends to be very neutral, even a bit dull, some gives more saturated results, etc.).

.. figure:: images/editor_rawimport.webp
    :alt:
    :align: center

    The RAW Import Tool Allow to Load Digital Negative in Image Editor
