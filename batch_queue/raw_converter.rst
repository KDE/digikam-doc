.. meta::
   :description: digiKam Raw Converter from Batch Queue Manager
   :keywords: digiKam, documentation, user manual, photo management, open source, free, learn, easy, batch, raw, converter

.. metadata-placeholder

   :authors: - digiKam Team (see Credits and License for details)

   :license: Creative Commons License SA 4.0

.. _raw_converter:

Raw Converter
=============

.. contents::

With the Batch Queue Manager, you can import and convert your images stored in RAW format to a target formats as (JPEG, TIFF, or PNG).

There are ome considerations before your convert, and even before you shoot in raw format. RAW image file formats keep the original information of the exposure supposedly without loss (when compressed, they use reversible, lossless compressions algorithms). Many photographers prefer to take their picture in RAW mode because the camera's built-in conversion program is often of lesser quality than what you can achieve with digital image processing. The whitebalance of the digital camera is registered but not applied to the image. Some CMOS CCD's create four types of color filter data: RGBG, Red, Green, Blue and another Green mask for contrast enhancement. This tool can take this into account.

The conversion is actually based on libraw. Don't expect to produce the same images as software provided by the camera vendor but sometimes libraw gives better results. 

Select the RAW files to convert and load them to a dedicate batch queue.

In Batch Queue Manager settings view, you can adjust the available check and value boxes to optimize the RAW conversion process. The first checkbox indicates to use the camera settings for white balance. The essential parameters like brightness, and red/blue amplifier may be adjusted. If the result is not quite optimal, don't worry, it is always possible to fine-tune the image later on.

The **Interpolate RGB as four colors** conversion option can be selected to use contrast information. (If your camera works in RGB mode, the RGBG setting has no effect).

You must choose one output formats to save the conversion result by placing the target file format conversion tool. The file name will stay the same by default, only the extension changes. **JPEG** uses the lossy algorithm and produces the smallest output file size. In opposite the tagged image format (**TIFF**) preserves all information of your image while using lossless LZW compression.

.. tip::

    If you intend to work a lot on your images or if it is likely that you have to reuse it later on, then don't use **JPEG** format because it allows a limited number of operations before it deteriorates visibly. **TIFF** and **PNG** are better suited to keep the original data.

.. note::

    If you choose **JPEG**, or **TIFF**, or **PNG** as the **Save Format** then the metadata included in RAW file will be included in the target files as Exif information.

When you have finished to setup the queue, click the **Process** button to start the conversion. If you want abort image conversion, press the **Abort** button. 

.. figure:: images/raw_converter.webp
    :alt:
    :align: center

    The Batch Queue Manager With a Workflow to Convert RAW files to HEIF Container by applying filters
