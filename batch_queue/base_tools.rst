.. meta::
   :description: digiKam Batch Queue Manager Base Tools
   :keywords: digiKam, documentation, user manual, photo management, open source, free, learn, easy, batch, queue, manager, tools, color, enhance, transform, effects, decorate

.. metadata-placeholder

   :authors: - digiKam Team

   :license: see Credits and License page for details (https://docs.digikam.org/en/credits_license.html)

.. _base_tools:

Base Tools
==========

.. contents::

Overview
--------

The Batch Queue Manager tools are available as plugins loaded dynamically at startup and configurable in :ref:`Setup dialog <plugins_settings>`. Except few ones, mostly all tools share the same functionalities than plugins from :ref:`Image Editor <image_editor>`. The difference with Image Editor tools is that there is no possibility to preview the tool effects over the images. Other tools are more designed to **Convert** to file formats, and to apply the :ref:`Digital Asset Management <asset_management>`.

.. figure:: images/bqm_base_tools_view.webp
    :alt:
    :align: center

    The Batch Queue Manager View to Select Base Tools for Creating a Workflow

.. _bqm_editortools:

Shared Image Editor Tools
-------------------------

List of tools coming from Image Editor and shared in Batch Queue Manager is given below. This list provide the links to Image Editor chapters from this manual corresponding to the Batch Queue Manager tools.

.. _bqm_colortools:

    - Image Color Corrections:

        - :ref:`Convert to 8 bits <color_depth>`

        - :ref:`Convert to 16 bits <color_depth>`

        - :ref:`Color Profile Conversion <color_cm>`

        - :ref:`Color Auto-Correction <color_auto>`

        - :ref:`BCG Correction <color_bcg>`

        - :ref:`HSL Correction <color_hsl>`

        - :ref:`Colors Balance <color_balance>`

        - :ref:`White Balance <color_wb>`

        - :ref:`Curves Adjust <color_curves>`

        - :ref:`Channels Mixer <color_mixer>`

        - :ref:`Black and White Convert <color_bw>` (including also the :ref:`Simulate Infrared Film <color_infrared>`)

        - :ref:`Invert Colors <color_invert>`

    .. note::

        **Adjust Levels** and **Simulate Color Negative Film** are not available in Batch Queue Manager.

.. _bqm_enhancetools:

    - Image Enhancement:

        - :ref:`Sharpen Image (sharpen, unsharp mask, refocus) <enhance_sharpen>`

        - :ref:`Blur Image <enhance_blur>`

        - :ref:`Red Eyes Correction <enhance_redeyes>`

        - :ref:`Local Contrast <enhance_localcontrast>`

        - :ref:`Noise Reduction <enhance_nr>`

        - :ref:`Hot Pixel Correction <enhance_hotpixels>`

        - :ref:`Restoration <enhance_restoration>`

        - :ref:`Anti-Vignetting <enhance_vignetting>`

        - :ref:`Lens Auto-Correction Tool <enhance_lensauto>`

    .. note::

        **Healing Clone Tool** and **Lens Distortion Correction** are not available in Batch Queue Manager.

.. _bqm_transformtools:

    - Image Transformation Tools:

        - :ref:`Crop Tool <transform_crop>`

        - :ref:`Resize <transform_resize>`

        - :ref:`Rotate <transform_freerotation>`

        - :ref:`Flip <transform_rotationflip>`

        **Liquid Rescale**, **Perspective**, **Shearing Tool**, and **Proportional Crop Tool** are not available in Batch Queue Manager.

.. _bqm_decoratetools:

    - Image Decoration Tools:

        - Add Watermark (more powerful tool than **Insert Text** from Image Editor)

        - :ref:`Insert Text <decorate_inserttext>`

        - :ref:`Add Texture <decorate_texture>`

.. _bqm_effecttools:

    - Special Effect Filters:

        - :ref:`Color Effects <effects_color>`

        - :ref:`Add Film Grain <effects_filmgrain>`

    .. note::

        **Simulate Oil Painting**, **Simulate Charcoal Drawing**, **Emboss Photograph**, **Distortion FX**, **Blur FX**, and **Add Rain Drops** are not available in Batch Queue Manager.

.. _bqm_converttools:

Convert Tools
-------------

These tools allow to save images to new file formats. These are mostly placed at end of your list of **Assigned Tools** from your **Workflow**.

    - :ref:`Convert to TIFF <image_formats>`

    - :ref:`Convert to PGF <image_formats>`

    - :ref:`Convert to HEIF <image_formats>`

    - :ref:`Convert to AVIF <image_formats>`

    - :ref:`Convert to PNG <image_formats>`

    - :ref:`Convert to JPEG <image_formats>`

    - :ref:`Convert to JPEG 2000 <image_formats>`

    - :ref:`Convert to WEBP <image_formats>`

    - :ref:`Convert RAW to DNG <dng_converter>` (this specific tool must be placed on to top of your list of **Assigned Tools** from your **Workflow**).

.. _bqm_metadatatools:

Metadata Tools
--------------

    - :ref:`Image Quality Sort <bqm_qualitysort>`

    - :ref:`Apply Metadata Template <bqm_assigntemplate>`

    - :ref:`Translate Metadata <bqm_translatemetadata>`

    - :ref:`Assign Captions <bqm_assigncaptions>`

    - :ref:`Assign Labels <bqm_assignlabels>`

    - :ref:`Remove Metadata <bqm_removemetadata>`

    - :ref:`Time Adjust <bqm_timeadjust>`

.. _bqm_customtools:

Custom Tools
------------

    - :ref:`User Shell Script <custom_script>`
