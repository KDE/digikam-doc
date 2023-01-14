.. meta::
   :description: Color Management and Camera Profiles
   :keywords: digiKam, documentation, user manual, photo management, open source, free, learn, easy, image editor, color management, icc, profile

.. metadata-placeholder

   :authors: - digiKam Team

   :license: see Credits and License page for details (https://docs.digikam.org/en/credits_license.html)

.. _camera_profiles:

The Camera Profiles
===================

Using Camera Profile during Shoots
----------------------------------

First and for the record, many excellent professional and amateur photographers save all their images as in-camera jpegs and work exclusively in the sRGB color space. But if you want to work in a larger color space, or if you want to work with raw files (even if you output sRGB image files from your raw files), read on.

Judging from questions asked in the digiKam user's forum, if you are reading this manual you probably are shooting raw images with a digital dSLR and you are hoping that somewhere in the arcane waters of color management lies the answer to how to get a nice picture from your raw image file. And you're right! The next thing you need is the right camera profile for developing your raw image. But first let's answer the question you really might have been asking.

Why doesn't the image produced by raw converters like Libraw look like the embedded preview displayed by digikam?

Glad you asked. All digital camera images start out as raw files, whether or not the camera allows the user the option to save the image as a raw file. When you ask the camera to save jpegs instead of raw files, the camera uses its on-board processor to convert the raw file to a jpeg. That embedded preview is what your final image would have looked like if you had set your camera to save jpegs instead of raw files.

From here I will speak from my experience as a Canon user, but I will guess that most or all entry-level and mid-range dSLRs behave in a similar manner. Canon offers the user several picture styles - neutral, standard, portrait, landscape, and so forth - that determine what kind of processing will be done to the raw image file to produce the final image, whether or not the processing is done "in-camera" or later, using the proprietary Canon DPP software. The Canon DPP raw processing software does give the user additional control, but still manipulates the raw image file in accordance with the chosen picture style. Most of the Canon picture styles add a heavy S-curve and extra color saturation to give the picture more "pop". Even if you choose the "neutral" picture style (the Canon picture style that gives you the least modified tonality); and select "less contrast", "less saturation", "no noise reduction", and "no sharpening" in the DPP raw development dialog, you will find, if you know what to look for, that an S-curve and also shadow denoising has been applied to your image.

Libraw (which digiKam uses to convert raw files to image files) doesn't add an S-curve to your image tonality. Libraw gives you the lights and darks that are actually recorded by the camera sensor. According to Tindeman, an excellent read and source of good advice, with links to equally good sources of additional information, Libraw is one of only a handful of raw developers that actually gives you the "scene-referred" tonality. And the Libraw scene-referred image is flat-looking, because the camera sensor records light linearly, whereas our eyes are constantly interacting with our brain to accommodate dim and bright areas in a scene, meaning our brain to some extent "applies an S-curve" to the scene to enable us to better focus in on the areas of particular interest as we look around.

The embedded jpeg preview looks so much nicer than Libraw's output. What is the value in scene-referred tonality?

When you take a picture, presumably you have an idea of what you want the final image to look like. It is much easier to achieve that final image if you don't have to "undo" stuff that has already been done to your image. Once Canon (or Nikon, or Bibble, etc.) has applied their proprietary S-curves and shadow-denoising, sharpening, etc. to your image, then your shadows, highlights, edge detail, etc. are already squashed, clipped, chopped, and otherwise altered and mangled. You've thrown information away and you cannot get it back. Especially in the shadows, even with 16-bit images (actually, 12- or 14-bits, depending on the camera, but it's encoded as 16-bits for the computer's convenience), there just isn't that much information to begin with.

It seems to me that the heart and soul of image processing is the deliberate manipulation of image tonality, color, selective sharpening, and so forth, such that the viewer focuses in on what you, the photographer, found of particular interest when you took the picture. Why give the art of image processing over to some proprietary raw processing software? In other words, "flat is good" if you'd rather give your images your own artistic interpretation. The alternative is to let the canned, proprietary algorithms produced by Canon, Nikon, Bibble, etc. interpret your images for you. (On the other hand, there is no denying that for many images, those canned algorithms are really pretty good!)
I can see the value in starting my image-editing with a scene-referred rendition instead of the eye-popping rendition that I see in the embedded jpeg. But I'm telling you, the images produced by digiKam/libraw look really really bad! Why?

Well, that depends. If the image looks very dark, then you asked Libraw to output a 16-bit file and you have run into a problem with Libraw not applying a gamma transform before outputting the image file. You can use the Image Editor to apply the appropriate gamma transform to the image file produced by Libraw. Or you can find or make a camera profile with a gamma of 1.

If your image has pink highlights, there's a solution. For an explanation of the problem, along with the command line cure for this problem, see this "Luminous Landscape" forum post.

If the image isn't dark but it looks really weird, probably you made some injudicious choices in the Libraw user-interface. The Libraw interface conveniently allows you to "dial in" options that you would otherwise have to specify at the command line. However, convenience always comes at a price. First, the interface might not provide access to all the options that are available at the command line. And second, to get the most from the Libraw interface, you have to know what the buttons, sliders, etc. in the interface actually do. Which means you need to know what happens at the command line if you want to get the best results from using the interface.

Digital Noise
-------------

See the following excellent articles:

    `The Digital camera image noise <https://www.cambridgeincolour.com/tutorials/image-noise.htm>`_

    `The Signal-to-Noise of Digital Camera images and Comparison to Film <https://clarkvision.com/imagedetail/digital.signal.to.noise/>`_

Why are the Canon and Nikon colors better than the colors produced by Libraw?

Color rendition is one place where the Canon (and presumably Nikon) proprietary raw developing software does a really, really good job. Why? Because the proprietary raw processing software is coupled with camera profiles that are specific to raw images coming from your make and model of camera, when processed using your make and model camera's proprietary raw processing software. I've checked extensively, using an "eyedropper" to compare the output of various raw developers using various camera profiles from various sources - a very tedious though instructive process. With digikam's Libraw user interface, you can apply Canon's camera-model-picture-style-specific color profile(s) to the Libraw output during the raw development process, and the colors will still NOT be exactly the same as what Canon produces.

Camera Profile Specificities
----------------------------

Digital cameras have an array of millions of little light sensors inside, making up either a CCD or a CMOS chip. These light-sensing pixels are color-blind - they only record the amount, not the color, of light falling on them. So to allow pixels to record color information, each pixel is capped by a transparent red, green, or blue lens, usually alternating in what is called a Bayer array (except for Faveon sensors, which work differently). A raw image is nothing more than an array of values indicating "how much light" passed through the red, blue, or green lens cap to reach the sensor.

Clearly, pixel response to light is the result of lots of camera-specific factors including: the nature of the sensor array itself, the precise coloring/transmissive qualities of the lens caps, and the particular analog-to-digital conversion and post-conversion processing that happens inside the camera to produce the raw image that gets stored on the card.

Analog to Digital Conversion
----------------------------

"Analog" means continuously varying, like how much water you can put in a glass. "Digitizing" an analog signal means that the continuously changing levels from the analog signal source are "rounded" to discrete quantities convenient to the binary numbers used by computers. The analog-to-digital conversion that takes place inside the camera is necessary because the light-sensing pixels are analog in nature - they collect a charge proportionate to the amount of light that reaches them. The accumulated charge on each pixel is then turned into a discrete, digital quantity by the camera's analog-to-digital converter. Which by the way explains why a 14-bit converter is better than a 12-bit converter - more precision in the conversion output means less information is thrown away in the conversion process.

Camera Profile and RAW Treatment
--------------------------------

The whole point of interpolation using demosaicing algorithms such as Libraw's default AHD is to guess what color and intensity of light actually fell on any given pixel by interpolating information gathered from that single pixel plus its neighboring pixels (see Wikipedia article). Every raw processing program makes additional assumptions such as "when is it signal and when is it background noise?", "at what point has the sensor well reached full saturation?", and so forth. The resulting output of all these algorithms and assumptions that raw processing software makes is a trio of RGB values for each pixel in the image. Given the same raw file, different raw processors will output different RGB values.

Generic Camera Profile
----------------------

This website section has information on where to find ready-made camera profiles. If you poke around the digiKam users forum archives, you'll find additional advice. If you keep hunting and experimenting, likely you will find a generic profile that works "well enough". However, as stated above, it's an unfortunate fact of digital imaging that the camera profiles supplied by Canon, Nikon, and the like don't work as well with raw converters other than each camera manufacturer's own proprietary raw converter. Which is why Bibble and Phase One, for example, have to make their own profiles for all the cameras that they support. So eventually you may decide that you want a camera profile that is specific to your camera, your lighting conditions, and your raw processing workflow.

.. figure:: images/cm_icc_workflow_logic.webp

Lighting Conditions and RAW Workflow
------------------------------------

Many commercial services provide profiling services, for a fee, of course. Or you can use LPRof to profile your camera yourself. If you want to profile your own camera, you will need an "IT8 target", that is, an image containing squares of known colors. Along with the IT8 target, you will receive the appropriate set of known values for each square of color on the target.

If you plan to use LProf to profile your camera, check the documentation for a list of recommended targets. To profile your camera, you photograph the IT8 target under specified lighting conditions (for example, in daylight, usually taken to mean noon on a sunny day in the summer, with nothing nearby that might cast shadows or reflect color casts) and save the image as a raw file. Then you process the raw file using your particular raw processing software+settings and run the resulting image file through the profiling software. The profiling software compares the RGB values in the image produced by your camera+lighting conditions+raw processing routine with the RGB values in the original target and then produces your camera (icc) profile.

Profiling a camera is exactly analogous to profiling a monitor. When profiling a monitor, the profiling software tells the graphics card to send squares of color with particular RGB values to the screen. The spectrophotometer measures the actual color that is produced on the screen. When profiling a camera, the known colors are the RGB colors in the original patches on the IT8 target, which the profiling software compares to the colors produced by the digital image of the target, which was photographed in selected lighting conditions, saved as raw, then processed with specific raw processing software plus settings.

Here is a link to a "how to" for using LProf to produce a camera profile. And here is a link to an affordable, well-regarded IT8 target.

How do I apply a camera profile to the 16-bit image file produced by my open source raw processing software? If you are using the Libraw interface from digiKam, here is how to tell digiKam which camera profile to use.

Profiles Point to Real Colors
-----------------------------

A color profile describes the color gamut of the device or space to which it belongs by specifying what real color in the real world corresponds to each trio of RGB values in the color space of the device (camera, monitor, printer) or working space.

The camera profile essentially says, "for every RGB trio of values associated with every pixel in the image file produced from the raw file by the raw processing software, "this RGB image file trio" corresponds to "that real color as seen by a real observer in the real world" (or rather, as displayed on the IT8 target if you produced your own camera profile, but it amounts to the same thing - the goal of profiling your camera is to make the picture of the target look like the target).

You cannot see an image by looking at its RGB values. Rather you see an image by displaying it on a monitor or by printing it. When you profile your monitor, you produce a monitor profile that says "this RGB trio of values that the graphics card sends to the screen" will produce on the screen "that real color as seen by a real observer in the real world".

What the monitor profile and the camera profile have in common is the part (in italics above) about "that real color as seen by a real observer in the real world." Different trios of RGB numbers in, respectively, the monitor and camera color spaces point to the same real, visible color in the real world. Real colors in the real world provide the reference point for translating between all the color profiles your image will ever encounter on its way from camera to screen to editing program to print or the web.

Real people don't even see the same colors when they look at the world, do they?

A long time ago (1931, although refinements continue to be made), the International Color Consortium decided to map out and mathematically describe all the colors visible to real people in the real world. So they showed a whole bunch of people a whole bunch of colors and asked them to say when "this" color matched "that" color, where the two visually matching colors were in fact produced by differing combinations of wavelengths. What was the value of such a strange procedure? Human color perception depends on the fact that we have three types of cone receptors with peak sensitivity to light at wavelengths of approximately 430, 540, and 570 nm, but with considerable overlap in sensitivity between the different cone types. One consequence of how we see color is that many different combinations of differing wavelengths of light will look like "the same color".

After extensive testing, the ICC produced the CIE-XYZ color space which mathematically describes and models all the colors visible to an ideal human observer ("ideal" in the sense of modeling the tested responses of lots of individual humans). This color space is NOT a color profile in the normal sense of the word. Rather it provides an absolute "Profile Connecting Space" (PCS) for translating color RGB values from one color space to another. (See here and here.)

CIE-XYZ is not the only PCS. Another commonly used PCS is CIE-Lab, which is mathematically derived from the CIE-XYZ space. CIE-Lab is intended to be "perceptually uniform", meaning "a change of the same amount in a color value should produce a change of about the same visual importance" (cited from Wikipedia article). Wikipedia says "The three coordinates of CIELAB represent the lightness of the color (L* = 0 yields black and L* = 100 indicates diffuse white; specular white may be higher), its position between red/magenta and green (a*, negative values indicate green while positive values indicate magenta) and its position between yellow and blue (b*, negative values indicate blue and positive values indicate yellow)" (cited from Wikipedia article).

To be useful, color profiles need to be coupled with software that performs the translation from one color space to another via the PCS. In the world of Linux® open source software (and also many closed source, commercial softwares), translation from one color space to another usually is done by Lcms, the "little color management software". For what it's worth, my own testing has shown that Lcms does more accurate color space conversions than Adobe's proprietary color conversion engine.
