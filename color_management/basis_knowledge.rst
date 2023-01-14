.. meta::
   :description: Basis Knowledge about Color Management
   :keywords: digiKam, documentation, user manual, photo management, open source, free, learn, easy, image editor, color management, icc, profile

.. metadata-placeholder

   :authors: - digiKam Team

   :license: see Credits and License page for details (https://docs.digikam.org/en/credits_license.html)

.. _basis_knowledge:

Basis Knowledge
===============

.. contents::

The point of a color-managed workflow is to ensure that the colors coming from your camera or scanner have a predictable relationship with the colors you actually photographed or scanned, that the colors displayed on your monitor match the colors coming from your camera or scanner, and that the colors you print or display on the web match the colors you produced in your digital darkroom.

.. figure:: images/cm_color_spaces.webp

Overview
--------

When it comes to color management, everyone wants to know, *which buttons do I push to get the results I want*. Unfortunately, color management of necessity involves making informed choices at every step along the image-processing workflow. The purpose of this section is to provide sufficient background information on color management, along with links to more in-depth information, to enable you to begin to make your own informed decisions, based on your own desired results.

Conditions to Ignore
--------------------

If your imaging workflow meets all six criteria listed below, then you don't need to worry about color management:

    - You are working at a monitor properly calibrated to the sRGB color space (more about that below).

    - Your imaging workflow starts with an in-camera-produced jpeg already in the sRGB color space.

    - You work exclusively in the sRGB color space for editing.

    - Your printer wants images in the sRGB color space.

    - Your scanner produces images in the sRGB color space.

    - Your only other image output is via email or the web, where sRGB is the de facto standard.

Color Management Definitions
----------------------------

What follow is some additional comments and definitions to understand the Color Management:

**Assign** a profile means change the meaning of the RGB numbers in an image by embedding a new profile without changing the actual RGB numbers associated with each pixel in the image. **Convert** to a profile means embed a new profile, but also change the RGB numbers at the same time so that the meaning of the RGB values - that is, the real-world visible color represented by the trio of RGB numbers associated with each pixel in an image - remains the same before and after the conversion from one space to another.

On the other hand, every time you assign a new working space profile rather than convert to a new working space (except when initially assigning a camera profile to the image file you get from your raw processing software), the appearance of the image should more or less drastically change (usually for the worse, unless the wrong profile had previously been inadvertently embedded in the image).

In theory, you should be able to do multiple conversions of an image from one working space to another, and if you are using a color-managed image editor, even though all the RGB numbers in the image will change with each conversion, the image displayed on your screen should look the same. In actual fact, because of rounding errors upon each conversion, not to mention gamut-clipping when going from a larger to a smaller working space, every time you convert from one space to another the image degrades a bit.

**Device-dependent** and **device-independent** profiles: The camera profile, a scanner profile, your monitor's profile, and your printer's color profile are all device-dependent profiles - these profiles only work with the specific device for which they were produced by means of profiling. Working space profiles and the PCS's are *device-independent*. Once an image file has been translated by Lcms to a device-independent working space, in a sense it no longer matters what device originally produced the image. But as soon as you want to display or print the image, then the device (monitor, printer) used matters a great deal and requires a device-dependent profile.

An **interpolated** raw file isn't a raw file. For some reason this simple point causes a lot of confusion. But after a raw file has been interpolated by raw processing software and then output as a tiff or jpeg, the original raw file is still a raw file, of course, but the interpolated file is just an image file. It isn't a raw file.

**Linear** has two related and easily confused definitions. *Linear* can mean that the image tonality reflects the tonality in the original scene as photographed instead of being altered by the application of an S-curve or other means of changing local and global tonality. It can also mean that the gamma transfer curve of the color space is linear. An image can be *linear* in either, both, or neither of these two senses. A raw image as developed by Libraw is linear in both senses. The same image as developed by Canon's RAW processing software won't be linear in either sense.

**HDR** and **LDR** do not refer to the bit-depth of the image. **High dynamic range** and **low dynamic range** refer to the total dynamic range encompassed by an image. A regular low dynamic range image, say encompassing a mere 5 *stops* (the average digital camera these days can easily accommodate 8 or 9 stops), can be saved as an 8-, 16-, 32-, or even 64-bit image, depending on your software, but the dynamic range of the image isn't thereby increased. Only the number of discrete steps from the brightest to the darkest tone in the image has changed. Conversely, a 22-stop scene (way beyond the capacity of a consumer-oriented digital camera without using multiple exposures) can be saved as an 8- or 16-bit image, but the resulting image will exhibit extreme banding (that is, it will display extreme banding in any given tonal range that can actually be displayed on a typical monitor at one time) because of the relatively few available discrete tonal steps from the lightest to the darkest tone in the image.

In-camera produced jpegs don't need a camera profile. All jpegs (or TIFFs) coming straight out of a camera (even if produced by point-and-shoots cameras that don't allow you to save a RAW file) start life inside the camera as a RAW file produced by the camera's Analog to Digital converter. If you save your images as jpegs, then the processor inside the camera interpolates the RAW file, assigns a camera profile, translates the resulting RGB numbers to a working space (usually **sRGB** but sometimes you can choose **AdobeRGB**, depending on the camera), does the jpeg compression, and stores the jpeg file on your camera card. So jpegs (or TIFFs) from your camera don't need to be assigned a camera profile which is then translated to a working space. Jpegs from a camera are already in a working space.

Useful mathematical information if you are dealing with Libraw's linear gamma output: Mathematically speaking, when doing a gamma transform you normalize (that is, divide by 256 if you are working with 8-bit values) the RGB numbers and raise the resulting numbers to an appropriate power depending on the respective gammas of the starting and ending color space, then renormalize the results to a new set of RGB numbers. It's not hard, and very instructive, to do this with a calculator for a few sets of RGB numbers spaced from (0,0,0) to (255,255,255) to see how RGB numbers change from one gamma encoding to another. Lcms does this for you when you ask Lcms to convert from one color space to another.

**Copyrighted and copyleft working spaces**: I will take it as given that all the ordinarily encountered working spaces, such as:

    - The several variants of **sRGB**. See :ref:`the chapter <monitor_profiles>` dedicated to this color space.

    - BruceRGB or BestRGB.

    - The various ECI (European color initiative) working space profiles.

    - **AdobeRGB**, Adobe **WideGamutRGB**, and Kodak/Adobe **ProPhotoRGB** (Kodak and Adobe ProPhoto are the same, just branded differently) and their non-branded, non-copyrighted counterparts. 

And quite a few other working spaces that could be added to this list, are all more or less suitable as working spaces. Which working space you should use depends only and solely on you, on your requirements on the Image Editor with your eventual output intentions (web, fine art print, etc.). However, as a critical aside, if you are using Adobe or other copyrighted working space profiles, these profiles contain copyright information that shows up in your image Exif information.

The Color Space Connections
---------------------------

The question for each RGB trio of values in the (let us assume) 16-bit TIFF produced by Libraw becomes, what does a particular trio of RGB values for the pixels making up images produced by this particular (make and model) camera really mean in terms of some absolute standard referencing some ideal observer.

This absolute standard referencing an ideal observer is more commonly called a Profile Connection Space. A camera profile is needed to accurately characterize or describe the response of a given camera's pixels to light entering that camera, so that the RGB values in the output file produced by the raw converter can be translated first into an absolute **Profile Connection Space** (PCS) and then from the PCS to your chosen working space.

As a very important aside, In digiKam the software used to translate from the camera profile to the PCS and from the PCS to your chosen working space and eventually to your chosen output space (for printing or perhaps monitor display) is based on `Lcms <https://www.littlecms.com/>`_ (the **Little Color Management** engine). For what it's worth, Lcms does more accurate conversions than Adobe's proprietary color conversion engine. Further, the RAW conversion in digiKam is based on decoding of the proprietary RAW file done by **Libraw**. This library, is the hero of raw conversion as without it we'd all be stuck using the usually Windows or Mac only proprietary softwares that comes with our digital cameras. The Libraw's interpolation algorithms (not to be confused with the aforementioned decoding of the proprietary RAW file), which are part of digiKam if properly used, produce results equal or superior to commercial, closed source software. We in the world of Linux® and open source software are not second-class citizens when it comes to digital imaging.

There are two commonly used Profile Connection Spaces - **CIELAB** and **CIEXYZ** (see this `wikipedia Color management section <https://en.wikipedia.org/wiki/Color_management#Color_transformation>`_ for details). Lcms uses the camera profile to translate the RGB values from the interpolated RAW file, into the appropriate Profile Connection Space (usually CIEXYZ). A profile connection space is not itself a working space. Rather a PCS is an absolute reference space used only for translating from one color space to another - think of a PCS as a **Universal Translator** for all the color profiles that an image might encounter in the course of its journey from camera raw file to final output:

    - Lcms uses the camera profile, also called an **Input profile**, to translate the interpolated Libraw-produced RGB numbers, which only have meaning relative to your (make and model of) camera, to a second set of RGB numbers that only have meaning in the **Profile Connection Space**.

    - Lcms translates the **Profile Connection Space** RGB numbers to the corresponding numbers in your chosen **Working space** so you can edit your image. And again, these working space numbers only have meaning relative to a given working space. The same red, visually speaking, is represented by different trios of RGB numbers in different working spaces; and if you assign the wrong profile the image will look wrong, slightly wrong or very wrong depending on the differences between the two profiles.

    - While you are editing your image in your chosen **Working space**, then Lcms should translate all the working space RGB numbers back to the PCS, and then over to the correct RGB numbers that enable your monitor (your display device) to give you the most accurate possible display representation of your image as it is being edited. This translation for display is done on the fly and you should never even notice it happening, unless it doesn't happen correctly - then the displayed image will look wrong.

    - When you are satisfied that your edited image is ready to share with the world, Lcms translates the **Working space** RGB numbers back into the PCS space and out again to a **Printer color space** using a **Printer profile** characterizing your printer/paper combination (if you plan on printing the image) or to sRGB (if you plan on displaying the image on the web or emailing it to friends or perhaps creating a slide-show to play on monitors other than your own). 

To back up a little bit and look at the first color profile an image encounters, that is, the camera profile (see (1) immediately above) - Libraw can in fact apply your camera profile for you (Libraw uses Lcms internally). But (i)the generating of the tiff composed of the interpolated RGB values derived from the camera raw file, and (ii)the application of the camera profile to the interpolated file, are two very distinct and totally separable (separable in theory and practice for Libraw; in theory only for most raw converters) steps. .

Camera Profiles
---------------

This manual section has a bit of information on where to find ready-made camera profiles. It's an unfortunate fact of digital imaging that the camera profiles supplied by Canon, Nikon, and the like don't work as well with RAW converters other than each camera manufacturer's own proprietary RAW converter. They have to make their own profiles for all the cameras that they support - keep this proprietary propensity of your camera manufacturer in mind next time you buy a digital camera.

To finding a camera profile for your camera is to make your own camera profile or have one made for you. There are quite a few commercial services who provide profiling services (for a fee, of course). Or you can use LPRof or Argyll to profile your camera yourself. We cannot speak about how easy or difficult the process of profiling a camera might be. But we would imagine, knowing how very meticulous the people behind Argyll, LPRof, and Lcms are about color management, that making your own camera profile is very do-able and very likely the results will be better than any proprietary profile. After all, Canon  didn't profile your camera, they just profiled a camera like your.

Working Spaces
--------------

So now your RAW file has been interpolated by Libraw and you've obtained a camera profile and used Lcms to apply your camera profile. What does all this mean? The real answer involves a lot of math and color science that goes way over my head and likely yours. The short, practical answer is that neither the camera profile space nor the Profile Connection Space is an appropriate space for image editing.

Your next step is to choose a working space for image editing. And then you (or rather the Lcms color management engine that digiKam uses) actually perform a double translation. First Lcms uses the camera profile to translate the RGB values of each pixel in the Libraw-output-image-without-camera-profile-applied into the aforementioned Profile Connection Space. Then it translates the RGB values of each pixel from the PCS to your chosen working space.

Soft Proofing
-------------

**Soft Proofing** is a way of previewing on the screen the result to be expected from an output on another device, typically a printer. Soft proofing will show you the difference to be expected before you actually do it (and waste your costly ink). So you can improve your settings without wasting time and money.

Rendering Intention
-------------------

**Rendering intent** refers to the way gamuts are handled when the intended target color space cannot handle the full gamut.

    - **Perceptual**, also called Image or Maintain Full Gamut. This is generally recommended for photographic images. The color gamut is expanded or compressed when moving between color spaces to maintain consistent overall appearance. Low saturation colors are changed very little. More saturated colors within the gamuts of both spaces may be altered to differentiate them from saturated colors outside the smaller gamut space. Perceptual rendering applies the same gamut compression to all images, even when the image contains no significant out-of-gamut colors.

    - **Relative Colorimetric**, also called Proof or Preserve Identical Color and White Point. Reproduces in-gamut colors exactly and clips out-of-gamut colors to the nearest reproducible hue.

    - **Absolute Colorimetric**, also called Match or Preserve Identical Colors. Reproduces in-gamut colors exactly and clips out-of-gamut colors to the nearest reproducible hue, sacrificing saturation and possibly lightness. On tinted papers, whites may be darkened to keep the hue identical to the original. For example, cyan may be added to the white of a cream-colored paper, effectively darkening the image. Rarely of interest to photographers.

    - **Saturation**, also called Graphic or Preserve Saturation. Maps the saturated primary colors in the source to saturated primary colors in the destination, neglecting differences in hue, saturation, or lightness. For block graphics; rarely of interest to photographers. 
