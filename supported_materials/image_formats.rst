.. meta::
   :description: Image File Formats Supported by digiKam
   :keywords: digiKam, documentation, user manual, photo management, open source, free, learn, easy

.. metadata-placeholder

   :authors: - digiKam Team (see Credits and License for details)

   :license: Creative Commons License SA 4.0

.. _image_formats:

Image Files
===========

.. contents::

Introduction
------------

digiKam relies on a number of libraries and support packages to load and save image formats. Which image formats are available will depend on the availability of these libraries on your system and, in some cases, on the way that those libraries have been compiled. On most distributions you will find that a wide range of image formats are viewable within digiKam.

This dependence on other libraries means that it is not possible to give a definitive list of all of the formats that will be available on your system. At the very least JPEG, PNG, and TIFF should be available.

digiKam only displays files that are in formats that it understands. It does this by looking at the file extension on the files and checking this against a predefined list. If the file extension is in the list digiKam will show the file in the Image View, provided the appropriate library is installed. You can change the list of file extensions that digiKam will accept; see the Configuration section for more details.

Almost all digital cameras store photographs in one of two formats: JPEG or RAW. Many cameras enable you to select which of these formats to use. A full description of these formats can be found `at the Wikipedia <https://en.wikipedia.org/wiki/Image_file_formats>`_. digiKam supports both of these formats.

Still Image Compression
-----------------------

Image compression is the application of data compression schemes on digital images. It is done through reducing redundancy of the image data in order to be able to store or transmit data in an efficient form.

Image compression can be lossy or lossless. Lossless compression methods are always preferred for their high preservation value for archival purposes before applying transformations like cropping, resizing, color corrections, etc. This is because lossy compression methods, especially when used at low bit rates, introduce compression artifacts. Lossy methods are suitable for natural images such as photos in applications where minor (sometimes imperceptible) loss of fidelity is acceptable to achieve a substantial reduction in file size. Lossy compression is good for image publishing on the Internet. 

JPEG
----

JPEG is a compressed format that trades some of the image quality to keep file sizes small. In fact, most cameras save their images in this format unless you specify otherwise. A JPEG image is stored using lossy compression, and you can vary the amount of compression. This allows you to choose between lower compression and higher image quality or greater compression and poorer quality. The only reason to choose higher compression is because it creates smaller files so you can store more images, and it's easier to send them by e-mail or post them on the Web. Most cameras give you two or three choices equivalent to good, better, best, although the names vary.

JPEG 2000 is supported as well. It provides for the same compression ratio with better (smoother) results compared to JPEG. The 2000 version has the option of being lossless if so specified in the settings.

TIFF
----

TIFF has been widely accepted and widely supported as an image format. Commonly, TIFF may be stored by the camera in uncompressed form or using a lossless compression algorithm (Deflate). It maintains higher image quality but at the expense of much larger file sizes. Some cameras let you save your images in this format, and it is a popular format because of its lossless compression algorithm. The problem is that the format has been altered by so many people that there are now 50 or more flavors and not all are recognizable by programs.

PNG
---

PNG is an image format that was developed as a replacement for a number of older, in the 1990's widely used, image file formats. It is a lossless format like TIFF but it is much more compact and saves disk space. Although your camera is unlikely to support PNG, some people like to convert their photographs to PNG as soon as they get them on their computer. Unlike JPEG, PNG images do not lose quality every time you re-encode them after modification. digiKam fully supports PNG images and the Batch Queue Manager can convert a batch of images from any supported format to PNG (and other formats) in one step.

PNG is an extensible file format for the lossless, portable, well-compressed storage of raster images. PNG provides a patent-free replacement for GIF and can also replace many common uses of TIFF. PNG is designed to work well in on-line viewing applications, such as the World Wide Web, so it is fully streamable with a progressive display option. Also, PNG can store gamma and chromaticity data for improved color matching on heterogeneous platforms. PNG supports 8 and 16 bits / colors /pixels depth. It's the perfect file format to archive your photographs. For more information about the PNG format `see the PNG homepage <https://www.libpng.org/pub/png/>`_.

PGF
---

"Progressive Graphics File" is another not so known but open file image format. Wavelet-based, it allows lossless and lossy data compression. PGF compares well with JPEG 2000 but it was developed for speed (compression/decompression) rather than to be the best at compression ratio. At the same file size a PGF file looks significantly better than a JPEG one, while remaining very good at progressive display too. Thus it should be well-suited for photo archiving (digiKam uses this format in database to store thumbnails). For more information about the PGF format `see the libPGF homepage <https://www.libpgf.org/>`_.

RAW
---

Some, typically more expensive, cameras allow you to store images in RAW format. RAW format is not really an image standard at all. It is different for every make of camera. RAW format images contain all the data that is taken directly from the camera's image sensor before the software in the camera applies things like white balance, sharpening etc. Storing photographs in a camera's RAW format allows you to alter settings, such as white balance, after the photograph has been taken. Most professional photographers use RAW format, because it offers them maximum flexibility. The downside is that RAW image files can be very large indeed.

If you want to learn more about RAW image format visit the very helpful guides `Wikipedia <https://en.wikipedia.org/wiki/Raw_image_format>`_, `The Luminous Landscape <https://www.luminous-landscape.com/tutorials/understanding-series/u-raw-files.shtml>`_, and `Cambridge in Colour <http://www.cambridgeincolour.com/tutorials/RAW-file-format.htm>`_. You can convert RAW format images into JPEG, PNG, or TIFF in digiKam using the Image Editor or the Batch Queue Manager.

digiKam supports RAW image loading only, relying on the `Libraw library <https://www.libraw.org/>`_ which is included in digiKam core and supports over **1000** RAW file formats. The table below shows a short list of camera RAW files supported by digiKam:

======================= ======================================================
RAW File Format         Description
======================= ======================================================
CRW, CR2, CR3           Canon digital camera RAW file formats
NEF, NRW                Nikon digital camera RAW file format
ORF, ORI                Olympus digital camera RAW file format
RAF                     Fuji digital camera RAW file format
RWL                     Leica camera RAW file format
PEF, PTX                Pentax digital camera RAW file format
X3F                     Sigma digital camera RAW file format
DCR, KDC, DC2, K25      Kodak digital camera RAW file format
SRF, SR2, ARW, MRW, MDC Sony/Minolta digital camera RAW file format
RAW                     Panasonic, Casio, Leica digital camera RAW file format
DNG (CS1, HDR)          Adobe RAW file format (Digital Negative)
BAY                     Casio RAW (Bayer)
ERF                     Epson digital camera RAW file format
FFF, 3FR                Imacon/Hasselblad RAW format
RW2                     Panasonic RAW file format
IIQ, CAP                Phase One digital camera Raw image format
RDC                     Ricoh RAW format
======================= ======================================================

If you want to know if your camera RAW file is supported by digiKam, go to `Help --> Supported RAW Cameras` dialog for details.

.. figure:: images/raw_cameras.webp

