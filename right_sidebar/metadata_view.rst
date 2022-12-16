.. meta::
   :description: digiKam Right Sidebar Metadata View
   :keywords: digiKam, documentation, user manual, photo management, open source, free, learn, easy

.. metadata-placeholder

   :authors: - Gilles Caulier <caulier dot gilles at gmail dot com>

   :license: Creative Commons License SA 4.0

.. _metadata_view:

Metadata View
=============

.. contents::

Metadata are data about the images or files, like technical data of camera setting during shooting, author info, copyrights, keywords, captions, and coordinates of location.

The metadata sidebar is composed of four sub tabs EXIF, Makernote, IPTC and XMP data. On the left, two buttons let you choose between full and simplified data display. In the middle you will find a disk icon to save the metadata to the disk. Next to it are a printer and copy icon - they do just that: print or copy the respective tab metadata to the clipboard.

A really nice feature is the live search box on the lower end of the metadata tabs. As you type in a keyword, the metadata on top of it will be successively filtered until you narrow down and what you are looking for. It is a quick way of accessing specific information.

Metadata, as shown in these four tabs, can be modified and enhanced in a number of ways elsewhere:

    - With the camera interface.

    - The Metadata Editor.

    - The Geolocation tool.

    - Copying database metadata to files.

    - Copying file's metadata to the database.

.. figure:: images/using-sidebar-metadataexif.png

For each metadata section, a bar is available on the top of view with:

    - A menu from the left button to use different levels to display contents through :

        - No Filter: display all markers.
        - Photograph: display only more important marker for photograph.
        - Custom: a customized selection of marker set in configuration dialog (see Settings entry).

    - A text field to perform string search in contents.

    - A menu from the right button to export contents:

        - Copy to clipboard.
        - Save to file.
        - Print data.

EXIF Tags
~~~~~~~~~

EXIF stands for Exchangeable image file format. It was designed specifically for digital cameras. It allows a large amount of information about the photograph to be stored. This information describes the camera which took the image along with the settings (including date and time) in use when the image was taken. An in-line thumbnail can be included.

EXIF format contains a set of marker sections named Image File Directories (IFD). The sections likely to be found in a normal EXIF file are as follows:

    - Image Information: contains general information about the image.

    - Embedded Thumbnail: contains information about the embedded thumbnail image.

    - Photograph Information: contains extended information about the photograph.

    - Interoperability: contains information to support interoperability between different EXIF implementations. 

You can review embedded EXIF information for the selected image from the first sidebar tab. The EXIF Viewer is purely informational: nothing you do with it will cause any change to the EXIF sections. If there are more entries than space available, just scroll down with the mouse wheel.


Some vendors add additional EXIF sections, such as Canon, Fujifilm, Nikon, Minolta, and Sigma. These sections contain vendor and model specific notes. These will be displayed on the Makernote tab.

Makernote Tags
~~~~~~~~~~~~~~

The EXIF standard defines a Makernote tag, which allows camera manufacturers to place any custom format metadata in the file. This is used increasingly by camera manufacturers to store a myriad of camera settings not listed in the EXIF standard, such as shooting modes, post-processing settings, serial number, focusing modes, etc. but this tag format is proprietary and manufacturer specific.

You can review embedded Makernote information for the selected image in this sidebar tab. The Makernote Viewer is purely informational: nothing you do with it will cause any change to the Makernote sections.

.. figure:: images/using-sidebar-metadatamakernotes.png

IPTC Tags
~~~~~~~~~

The International Press Telecommunications Council, is a consortium of the world's major news agencies and news industry vendors. It develops and maintains technical standards for improved news exchange that are used by virtually every major news organization in the world.

The IPTC was established in 1965 by a group of news organizations to safeguard the telecommunications interests of the world's press. Since the late 1970s IPTC's activities have primarily focused on developing and publishing industry standards for the interchange of news data.

In particular, the IPTC defined a set of metadata attributes that can be applied to images. These were defined originally in 1979, and revised significantly in 1991 to be the "Information Interchange Model" (IIM), but the concept really advanced in 1994 when Adobe defined a specification for actually embedding the metadata into digital image files - known as "IPTC headers".

You can review embedded IPTC information for the selected image in this sidebar tab. The IPTC Viewer is purely informational: nothing you do with it will cause any change to the IPTC sections.

.. figure:: images/using-sidebar-metadataiptc.png

XMP Tags
~~~~~~~~

The Extensible Metadata Platform (XMP) is an ISO standard, originally created by Adobe Systems Inc., for the creation, processing and interchange of standardized and custom metadata for digital documents and data sets.

XMP standardizes a data model, a serialization format and core properties for the definition and processing of extensible metadata. It also provides guidelines for embedding XMP information into popular image, video and document file formats, without breaking their readability by applications that do not support XMP.

Although metadata can alternatively be stored in a sidecar file, embedding metadata avoids problems that occur when metadata is stored separately.

XMP is given to replace IPTC on the future.

You can review embedded XMP information for the selected image in this sidebar tab. The XMP Viewer is purely informational: nothing you do with it will cause any change to the XMP sections.

.. figure:: images/using-sidebar-metadataxmp.png

ExifTool View
~~~~~~~~~~~~~

ExifTool is a free and open-source program for reading, writing, and manipulating image, audio, video, and PDF metadata. It is platform independent as a command-line Perl application. Prior, digiKam use Exiv2 library to handle metadata, but it can use also ExifTool as an alternative to incorporated different types of digital workflows not supported by Exiv2.

ExifTool supports many types of metadata including Exif, IPTC, XMP, JFIF, GeoTIFF, ICC Profile, Photoshop IRB, FlashPix, AFCP and ID3, as well as the manufacturer-specific metadata formats of many digital cameras.

You can review information decoded by ExifTool for the selected image in this sidebar tab. The ExifTool Viewer is purely informational: nothing you do with it will cause any change to the information.

.. figure:: images/using-sidebar-metadataexiftool.png
