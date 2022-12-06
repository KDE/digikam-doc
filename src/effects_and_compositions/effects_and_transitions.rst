.. metadata-placeholder

   :authors: - Annew (https://userbase.kde.org/User:Annew)
             - Claus Christensen
             - Yuri Chornoivan
             - Ttguy (https://userbase.kde.org/User:Ttguy)
             - Bushuev (https://userbase.kde.org/User:Bushuev)
             - Roger (https://userbase.kde.org/User:Roger)
             - ChristianW (https://userbase.kde.org/User:ChristianW)
             - Tenzen (https://userbase.kde.org/User:Tenzen)

   :license: Creative Commons License SA 4.0

.. _effects_and_transitions:

Alphabetical List of Effects and Compositions
=============================================

.. contents::

.. note::
   The effects and compositions included will differ depending on the available plug-ins on the specific packaging on each operating system. Kdenlive will auto-detect and make available any supported LADSPA plug-in packages from your distribution. For the greatest compatibility, please use the AppImage version of Kdenlive.

.. list-table::
  :header-rows: 1

  * - Effect or Transition Name
    - Type
    - Category
    - Description
  * - :ref:`3_point_balance`
    - Video Effect
    - Color and Image correction
    - Balances colors along with 3 points (frei0r.three_point_balance)
  * - 3d_fft_denoiser
    - Video Effect
    - Grain and Noise
    - Denoise frames using 3D FFT (Frequency Domain Filtering) (avfilter.fftdnoiz)
  * - 3-level_threshold
    - Video Effect
    - Stylize
    - Dynamic 3-level thresholding (frei0r.threelay0r)
  * - `4 x 4 pole allpass <https://www.mltframework.org/plugins/FilterLadspa-1218/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1218)
  * - acontrast
    - Audio Effect
    - Audio
    - Simple audio dynamic range compression/expansion filter.
  * - acrusher
    - Audio Effect
    - Audio
    - Reduce audio bit resolution (avfilter.acrusher)
  * - acue
    - Audio Effect
    - Audio
    - Delay filtering to match a cue (avfilter.acue)
  * - :ref:`addition`
    - Compositions
    -
    - Perform an RGB[A] addition operation of the pixel sources (frei0r.addition)
  * - :ref:`addition_alpha`
    - Compositions
    -
    - Perform an RGB[A] addition_alpha operation of the pixel sources (frei0r.addition_alpha)
  * - addroi
    - Compositions
    -
    - Add region of interest to frame (avfilter.addroi)
  * - adeclick
    - Audio Effect
    - Audio
    - Remove impulsive noise from input audio (avfilter.adeclick)
  * - adenorm
    - Audio Effect
    - Audio
    - Remedy denormals by adding extremely low-level noise (avfilter.adenorm)
  * - aderivative
    - Audio Effect
    - Audio
    - Compute derivative of input audio (avfilter.aderivative)
  * - aexciter
    - Audio Effect
    - Audio
    - Enhance high frequency part of audio (avfilter.aexciter)
  * - afftdn
    - Audio Effect
    - Audio
    - Denoise audio samples using FFT (avfilter.afftdn)
  * - afreqshift
    - Audio Effect
    - Audio
    - Apply frequency shifting to input audio (avfilter.afreqshift)
  * - aintergral
    - Audio Effect
    - Audio
    - Compute integral of input audio (avfilter.aintegral)
  * - `Aliasing <https://www.mltframework.org/plugins/FilterLadspa-1407/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1407)
  * - alimiter
    - Audio Effect
    - Audio
    - Audio lookahead limiter (avfilter.alimiter)
  * - allpass
    - Audio Effect
    - Audio
    - Apply a two-pole all-pass filter (avfilter.allpass)
  * - `Allpass delay line cubic spline interpolation <https://www.mltframework.org/plugins/FilterLadspa-1897/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1897)
  * - `Allpass delay line linear interpolation <https://www.mltframework.org/plugins/FilterLadspa-1896/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1896)
  * - `Allpass delay line noninterpolating <https://www.mltframework.org/plugins/FilterLadspa-1895/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1895)
  * - aloop
    - Audio Effect
    - Audio
    - Loop audio samples (avfilter.aloop)
  * - :ref:`alpha_gradient`
    - Video Effect
    - Alpha, Mask and Keying
    - Fill the alpha channel with the specified gradient (frei0r.alphagrad)
  * - :ref:`alpha_operations`
    - Video Effect
    - Alpha, Mask and Keying
    - Display and manipulation of the alpha channel (frei0r.alpha0ps)
  * - :ref:`alpha_shapes`
    - Video Effect
    - Alpha, Mask and Keying
    - Draws simple shapes into the alpha channel (frei0r.alphaspot)
  * - alphastrobing
    - Video Effect
    - Alpha, Mask and Keying
    - Strobes the alpha channel to 0. Many other filters overwrite the alpha channel, in that case this needs to be last (strobe)
  * - :ref:`alphaatop`
    - Compositions
    -
    - The alpha ATOP operation (frei0r.alphatop)
  * - :ref:`alphain`
    - Compositions
    - -
    - The alpha IN operation (frei0r.alphain)
  * - :ref:`alphaout`
    - Compositions
    -
    - The alpha OUT operation (frei0r.alphaout)
  * - :ref:`alphaover`
    - Compositions
    -
    - The alpha OVER operation (frei0r.alphaover)
  * - :ref:`alphaxor`
    - Compositions
    -
    - The alpha XOR operation (frei0r.alphaxor)
  * - `AM pitchshifter <https://www.mltframework.org/plugins/FilterLadspa-1433/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1433)
  * - anlmdn
    - Audio Effect
    - Audio
    - Reduce broadband noise from stream using Non-Local Means (avfilter.anlmdn)
  * - aphaser
    - Audio Effect
    - Audio
    - Add a phasing effect to the audio (avfilter.aphaser)
  * - aphaseshift
    - Audio Effect
    - Audio
    - Apply phase shifting to input audio (avfilter.aphaseshift)
  * - :ref:`applylut`
    - Video Effect
    - Color and Image correction
    - Apply a Look Up Table (LUT) to the video. A LUT is an easy way to correct the color of a video. Supported formats: 3dl (AfterEffects), .cube (Iridas), .dat (DaVinci), .m3d (Pandora) (avfilter.lut3d)
  * - apulsator
    - Audio Effect
    - Audio
    - Audio Pulsator (avfilter.apulsator)
  * - arndn
    - Audio Effect
    - Audio
    - Reduce noise from speech using recurrent Neural Networks (avfilter.arnndn)
  * - `Artificial latency <https://www.mltframework.org/plugins/FilterLadspa-1914/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1914)
  * - asidedata
    - Audio Effect
    - Audio
    - Manipulate audio frame side data (avfilter.asidedata)
  * - asoftclip
    - Audio Effect
    - Audio
    - Audio soft clipper (avfilter.asoftclip)
  * - asubboost
    - Audio Effect
    - Audio
    - Show time domain statistics about audio frames (avfilter.astats)
  * - astats
    - Audio Effect
    - Audio
    - Boost subwoofer frequencies (avfilter.asubboost)
  * - asubcut
    - Audio Effect
    - Audio
    - Cut subwoofer frequencies (avfilter.asubcut)
  * - asupercut
    - Audio Effect
    - Audio
    - Cut super frequencies (avfilter.asupercut)
  * - asuperpass
    - Audio Effect
    - Audio
    - Apply high order Butterworth band-pass filter (avfilter.asuperpass)
  * - asuperstop
    - Audio Effect
    - Audio
    - Apply high order Butterworth band-stop filter (avfilter.asuperstop)
  * - Audio Divider (Suboctave Generator)
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1186)
  * - audio_equalizer_(avfilter)
    - Audio Effect
    - Audio
    - Apply two-pole peaking equalization (EQ) filter (avfilter.equalizer)
  * - audio_levels
    - Audio Effect
    - Audio
    - Compute the audio amplitude (audiolevel)
  * - audio_pan
    - Audio Effect
    - Audio
    - Pan an audio channel, adjust balance, or adjust fade (panner)
  * - :ref:`audio_spectrum_filter`
    - Video Effect
    - On Master
    - An audio visualization filter that draws an audio spectrum on the image (audiospectrum)
  * - :ref:`audio_wave`
    - Video Effect
    - On Master
    - Display the audio waveform instead of the video (audiowave)
  * - audio_waveform_filter
    - Audio Effect
    - Audio
    - An audio visualization filter that draws an audio waveform on the image (audiowaveform)
  * - audiomap
    - Audio Effect
    - Audio
    - audiomap (audiomap)
  * - :ref:`auto_mask`
    - Video Effect
    - Alpha, Mask and Keying
    - Hide a selected zone and follow its movements (autotrack_rectangle)
  * - `Auto phaser <https://www.mltframework.org/plugins/FilterLadspa-1219/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1219)
  * - average_blur
    - Video Effects
    - Blur and Sharpen
    - Apply average blur filter (avfilter.avgblur)
  * - bandpass
    - Audio Effect
    - Audio
    - Apply a two-pole band-pass filter (avfilter.bandpass)
  * - bandreject
    - Audio Effect
    - Audio
    - Apply a two-pole Butterworth band-reject filter (avfilter.bandreject)
  * - balance
    - Video Effect
    - Color and Image correction
    - Extracts Blue from Image (frei0r.B)
  * - `Barry's Satan Maximiser <https://www.mltframework.org/plugins/FilterLadspa-1408/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1408)
  * - bass
    - Audio Effect
    - Audio
    - Boost or cut lower frequencies (avfilter.bass)
  * - :ref:`bezier_curves`
    - Video Effect
    - Color and Image Correction
    - Color curves adjustment (frei0r.curves)
  * - bilateral
    - Video Effect
    - Misc
    - Apply Bilateral filter (avfilter.bilateral)
  * - :ref:`binarize`
    - Video Effect
    - Stylize
    - Make monochrome clip (threshold)
  * - binarizedynamically
    - Video Effect
    - Stylize
    - Dynamic thresholding (frei0r.twolay0r)
  * - biquad
    - Audio Effect
    - Audio
    - Apply a biquad IIR filter with the given coefficients (avftiler.biquad)
  * - bluescreen0r
    - Video Effect
    - Alpha, Mask and Keying
    - Color to alpha (blit SRCALPHA) (frei0r.bluescreen0r)
  * - :ref:`blur`
    - Video Effect
    - Deprecated
    - Blur using 2D IIR filters (exponential, lowpass, gaussian) (frei0r.IIRblur)
  * - `Bode frequency shifter <https://www.mltframework.org/plugins/FilterLadspa-1431/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1431)
  * - `Bode frequency shifter (CV) <https://www.mltframework.org/plugins/FilterLadspa-1432/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1432)
  * - :ref:`box_blur`
    - Video Effect
    - Blur and Sharpen
    - Box blur (separate horizontal and vertical blur) (boxblur)
  * - :ref:`box_blur`
    - Video Effect
    - Blur and Sharpen
    - Apply a boxblur algorithm to the input video (avfilter.boxblur)
  * - :ref:`brightness`
    - Video Effect
    - Color and Image correction
    - Adjusts the brightness of a source image (frei0r.brightness)
  * - :ref:`brightness_(keyframable)`
    - Video Effect
    - Color and Image correction
    - Change the image brightness with keyframes (brightness)
  * - burn
    - Compositions
    -
    - Perform an RGB[A] dodge operation between the pixel sources, using the generalized algorithm: D = saturation of 255 or depletion of 0, of ((255-A)*256) / (b+1) (frei0r.burn)
  * - BurningTV – Deprecated
    - Video Effect
    - Deprecated
    - burningtv
  * - bw0r
    - Video Effect
    - Color and Image correction
    - Turns image Black/White (frei0r.bw0r)
  * - cairo_affine_blend
    - Compositions
    -
    - Composites second input on first input applying user-defined transformations, opacity, and blend mode (frei0r.cairoaffineblend)
  * - cairo_blend
    - Compositions
    - -
    - Composites second input on the first input with user-defined blend mode and opacity (frei0r.cairoblend)
  * - :ref:`cairogradient`
    - Video Effect
    - Generate
    - Draws a gradient on top of image. Filter is given gradient start and end points, colors and opacities.
  * - :ref:`cairoimagegrid`
    - Video Effect
    - Generate
    - Create a video grid (frei0r.cairoimagegrid)
  * - :ref:`cartoon`
    - Video Effect
    - Stylize
    - Cartoonify video, do a form of edge detect (frei0r.cartoon)
  * - :ref:`cartoon`
    - Video Effect
    - Misc
    - Contrast Adaptive Sharpen (avfilter.cas)
  * - :ref:`charcoal_effect`
    - Video Effect
    - Stylize
    - Charcoal drawing effect (charcoal)
  * - `Chebyshev distortion <https://www.mltframework.org/plugins/FilterLadspa-1430/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1430)
  * - :ref:`chroma_hold_effect`
    - Video Effect
    - Color and Image correction
    - Make image greyscale except for chosen color (chroma_hold)
  * - chromahold
    - Video Effect
    - Color and Image correction
    - Removes all color information for all colors except for a certain one (avfilter.chromahold)
  * - :ref:`blue_screen`
    - Video Effect
    - Alpha, Mask and Keying
    - Make Selected Color transparent (chroma)
  * - chroma_shift
    - Video Effect
    - Stylize
    - Shift chroma pixels horizontally and/or vertically (avfilter.chromashift)
  * - chromanr
    - Video Effect
    - Misc
    - Reduce chrominance noise (avfilter.chromanr)
  * - ciescope
    - Video Effect
    - Utility
    - Video CIE scope (avfilter.ciescope)
  * - cmyk_adjust_(avfilter)
    - Video Effect
    - Color and Image correction
    - Apply CMYK correction to specific color ranges (avfilter.selectivecolor)
  * - color_balance
    - Video Effect
    - Color and Image correction
    - Modify intensity of primary colors (red, green and blue) of input frames (avfilter.colorbalance)
  * - color_channel_mixer
    - Video Effect
    - Color and Image correction
    - Modifies a color channel by adding the values associated to the other channels of the same pixels (avfilter.colorchannelmixer)
  * - :ref:`color_distance`
    - Video Effect
    - Stylize
    - Calculates the distance between the selected color and the current pixel and uses that value as a new pixel value (frei0r.colordistance)
  * - :ref:`color_effect`
    - Video Effect
    - Stylize
    - Applies a pre-made color effect to image (frei0r.colortap)
  * - color_hold
    - Video Effect
    - Color and Image correction
    - Remove all color information all RGB colors except for certain one (avfilter.colorhold)
  * - :ref:`color_selection`
    - Video Effect
    - Alpha, Mask and Keying
    - Chroma Key with more advanced options (e.g. different color models). Use if basic chroma key is not working effectively (frei0r.select0r)
  * - color_only
    - Compositions
    -
    - Perform a conversion to color only of the source input using the hue and saturation values of input2 (frei0r.color_only)
  * - colorcontrast
    - Video Effect
    - Stylize
    - Calculates the distance between the selected color and the current pixel and uses that value as a new pixel value (frei0r.colordistance)
  * - colorcorrect
    - Video Effect
    - Stylize
    - Applies a pre-made color effect to image (frei0r.colortap)
  * - colorize
    - Video Effect
    - Color and Image correction
    - Colorizes image to selected hue, saturation and lightness (frei0r.colorize)
  * - colorize
    - Video Effect
    - Color and Image correction
    - Overlay a solid color on the video stream (avfilter.colorize)
  * - colorlevels
    - Video Effect
    - Color and Image correction
    - Adjust video input frames using levels (avfilter.colorlevels)
  * - colormatrix
    - Video Effect
    - Image Adjustment
    - Convert color matrix (avfilter.colormatrix)
  * - colortemperature
    - Video Effect
    - Misc
    - Adjust color temperature of video (avfilter.colortemperature)
  * - `Comb delay line cubic spline interpolation <https://www.mltframework.org/plugins/FilterLadspa-1888/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1888)
  * - `Comb delay line linear interpolation <https://www.mltframework.org/plugins/FilterLadspa-1887/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1887)
  * - `Comb delay line noninterpolating <https://www.mltframework.org/plugins/FilterLadspa-1889/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1889)
  * - `Comb Filter <https://www.mltframework.org/plugins/FilterLadspa-1190/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1190)
  * - comb_splitter
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1411)
  * - compand
    - Audio Effect
    - Audio
    - LADSPA plugin (ladspa.1430)
  * - compensationdelay
    - Audio Effect
    - Audio
    - Audio Compensation Delay Line (avfilter.compensationdelay)
  * - :ref:`composite`
    - Compositions
    -
    - A key-framable alpha-channel compositor for two frames (composite)
  * - compositeandtransform
    - Compositions
    -
    - Composites second input on the first input with user-defined blend mode, opacity and scale (qtblend)
  * - `Constant Signal Generator <https://www.mltframework.org/plugins/FilterLadspa-1909/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1909)
  * - :ref:`contrast`
    - Audio Effect
    - Audio correction
    - Process audio using a SoX effect
  * - contrast
    - Video Effect
    - Color and Image correction
    - Adjusts the contrast of a source image (frei0r.contrast0r)
  * - copy_channels
    - Audio Effect
    - Audio
    - Copy one audio channel to another (channelcopy)
  * - :ref:`corners`
    - Video Effect
    - Transform, Distort and Perspective
    - Four corners geometry engine (frei0r.c0rners)
  * - crop_by_padding
    - Video Effect
    - Transform, Distort and Perspective
    - This filter crops the image to a rounded rectangle or circle by padding it with a color (qtcrop)
  * - :ref:`scale_and_tilt`
    - Video Effect
    - Transform, Distort and Perspective
    - Scales, Tilts and Crops an Image (frei0r.scale0tilt)
  * - `Crossfade <https://www.mltframework.org/plugins/FilterLadspa-1915/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1915)
  * - `Crossfade (4 outs) <https://www.mltframework.org/plugins/FilterLadspa-1917/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA Plugin (ladspa.1917)
  * - crossfeed
    - Audio Effect
    - Steve Harris’ SWH plugins
    - Apply headphone crossfeed filter (avfilter.crossfeed)
  * - `Crossover distortion <https://www.mltframework.org/plugins/FilterLadspa-1404/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1404)
  * - crystalizer
    - Audio Effect
    - Audio
    - Simple audio noise sharpening filter (avfilter.crystalizer)
  * - :ref:`curves`
    - Video Effect
    - Color and Image correction
    - Color curves adjustment (frei0r.curves)
  * - :ref:`dance`
    - Video Effect
    - On Master
    - An audio visualization filter that moves the image around proportional to the magnitude of the audio spectrum (dance)
  * - darken
    - Compositions
    -
    - Perform a darken operation between two sources (minimum value fo both sources) (frei0r.darken)
  * - datascope
    - Video Effect
    - Utility
    - Video data analysis (avfilter.datascope)
  * - dblur
    - Video Effect
    - Transform, Distort and Perspective
    - Non rectilinear lens mappings (frei0r.defish0r)
  * - `DC Offset Remover <https://www.mltframework.org/plugins/FilterLadspa-1207/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1207)
  * - dctdnoiz
    - Video Effect
    - Deprecated
    - Denoise frames using 2D DCT frequency domain filtering (avfilter.dctdnoiz)
  * - deband
    - Video Effect
    - Image Adjustment
    - Remove banding artifacts from input video. It works by replacing banded pixels with an average value of referenced pixels (avfilter.deband)
  * - `Decimator <https://www.mltframework.org/plugins/FilterLadspa-1202/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1202)
  * - `Declipper <https://www.mltframework.org/plugins/FilterLadspa-1195/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1195)
  * - deesser
    - Audio Effect
    - Audio
    - Apply a de-essing to the audio (avfilter.deesser)
  * - :ref:`defish`
    - Video Effect
    - Transform, Distort and Perspective
    - Non rectilinear lens mappings (frei0r.defish0r)
  * - deinterlace_qsv
    - Video Effect
    - Misc
    - QuickSync video deinterlacing (avfilter.deinterlace_qsv)
  * - `Delayorama <https://www.mltframework.org/plugins/FilterLadspa-1402/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1402)
  * - delogo
    - Video Effect
    - Deprecated
    - Perform an RGB[A] difference operation between the pixel sources (frei0r.difference)
  * - :ref:`denoiser`
    - Video Effect
    - Grain and Noise
    - High Quality 3d denoiser (frei0r.hqdn3d)
  * - deshake
    - Video Effect
    - Misc
    - Feature-point based video stabilization filter (avfilter.deshake_opencl)
  * - despill
    - Video Effect
    - Alpha, Mask and Keying
    - Remove unwanted contamination of foreground colors, caused by reflected color of greenscreen or bluescreen (avfilter.despill)
  * - difference
    - Compositions
    -
    - Plasma (frei0r.distort0r)
  * - dilation
    - Video Effect
    - Image Adjustment
    - Apply dilation effect (avfilter.dilation)
  * - `Diode Processor <https://www.mltframework.org/plugins/FilterLadspa-1185/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1185)
  * - dissolve
    - Compositions
    -
    - Fade out one video while fading in the other video (luma)
  * - :ref:`distort`
    - Video Effect
    - Transform, Distort and Perspective
    - Plasma (frei0r.distort0r)
  * - :ref:`dither`
    - Video Effect
    - Deprecated
    - Dithers the image and reduces the number of available colors (frei0r.dither)
  * - divide
    - Compositions
    -
    - Perform an RGB[A] divide operation between the pixel sources: input1 is the numerator, input2 the denominator (frei0r.divide)
  * - `DJ EQ <https://www.mltframework.org/plugins/FilterLadspa-1901/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1901)
  * - `DJ EQ (mono) <https://www.mltframework.org/plugins/FilterLadspa-1907/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1907)
  * - `DJ flanger <https://www.mltframework.org/plugins/FilterLadspa-1438/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1438)
  * - dnn_processing
    - Video Effect
    - Misc
    - Apply DNN processing filter to the input (avfilter.dnn_processing)
  * - dodge
    - Compositions
    -
    - Perform an RGB[A] dodge operation between the pixel sources, using the generalized algorithm: D = saturation of 255 or (A*256)/(256-B) (frei0r.dodge)
  * - drawbox
    - Video Effect
    - Generate
    - Draw a colored box on the input video (avfilter.drawbox)
  * - drawgrid
    - Video Effect
    - Generate
    - Draw a colored grid on the input video (avfilter.drawgrid)
  * - drmeter
    - Audio Effect
    - Audio
    - Measure audio dynamic range (avfilter.drmeter)
  * - :ref:`dust`
    - Video Effect
    - Stylize
    - Add dust and specks to the video, as in old movies (dust)
  * - :ref:`dynamic_text`
    - Video Effect
    - Stylize
    - Overlay text with keywords replaced (dynamictext)
  * - dynaudnorm
    - Audio Effect
    - Audio
    - Dynamic Audio Normalizer (avfilter.dynaudnorm)
  * - `Dyson compressor <https://www.mltframework.org/plugins/FilterLadspa-1403/>`_
    - Audio Effect
    - Audio
    -
  * - :ref:`crop`
    - Video Effect
    - Transform, Distort and Perspective
    - Trim the edges of a clip (crop)
  * - :ref:`edge_glow`
    - Video Effect
    - Stylize
    - Edge glow filter (frei0r.edgeglow)
  * - edgedetect
    - Video Effect
    - Transform, Distort and Perspective
    - Detect and draw edges. The filter uses the Canny Edge Detection algorithm (avfilter.edgedetect)
  * - elastic_scale_filter
    - Video Effect
    - Transform, Distort and Perspective
    - This is a frei0r filter which allows to scale video footage non-linearly (frei0r.elastic_scale)
  * - elbg
    - Video Effect
    - Stylize
    - Apply posterize effect, using the ELBG algorithm (avfilter.elbg)
  * - emboss
    - Video Effect
    - Stylize
    - Creates embossed relief image of source image (frei0r.emboss)
  * - :ref:`equaliz0r`
    - Video Effect
    - Color and Image correction
    - Equalizes the intensity historgrams (frei0r.equaliz0r)
  * - erosion
    - Video Effect
    - Image Adjustment
    - Apply erosion effect (avfilter.erosion)
  * - estdif
    - Video Effect
    - Misc
    - Apply edge Slope Tracking deinterlace (avfilter.estdif)
  * - `Exponential signal decay <https://www.mltframework.org/plugins/FilterLadspa-1886/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1886)
  * - exposure
    - Video Effect
    - Misc
    - Adjust exposure of the video stream (avfilter.exposure)
  * - extrastereo
    - Audio Effect
    - Audio
    - Increase difference between stereo audio channels (avfilter.extrastereo)
  * - :ref:`fade_from_black` (video effect)
    - Video Effect
    - Motion
    - Fade video from black (brightness)
  * - fade_in (audio effect)
    - Audio Effect
    - fade
    - Fade in audio track (volume)
  * - fade_out (audio effect)
    - Audio Effect
    - fade
    - Fade out audio track (volume)
  * - :ref:`fade_to_black`  (video effect)
    - Video Effect
    - Motion
    - Fade video to black (brightness)
  * - fast_lookahead_limiter
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1913)
  * - `Fast overdrive <https://www.mltframework.org/plugins/FilterLadspa-1196/>`_
    - Audio Effect
    - Audio
    -
  * - fft
    - Audio Effect
    - Audio
    - An audio filter that computes the FFT of the audio. This filter does not modify the audio or the image. It only computes the FFT and stores the result in the “bins” property of the filter (fft)
  * - fill_boarders
    - Video Effect
    - Transform, Distort, and Perspective
    - Fill borders of the input video, without changing video stream dimensions. Sometimes video can have garbage at the four edges and you may not want to crop video input to keep size multiple of some number (avfilter.fillborders)
  * - filp_horizontally
    - Video Effect
    - Transform, Distort and Perspective
    - Horizontally flip the input video (avfilter.hflip)
  * - firequalier
    - Audio Effect
    - Audio
    - Finite Impulse Response Equalizer (avfilter.firequalizer)
  * - `Flanger <https://www.mltframework.org/plugins/FilterLadspa-1191/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1191)
  * - flanger
    - Audio Effect
    - Audio
    - Apply a flanging effect to the audio (avfilter.flanger)
  * - flip_vertically
    - Video Effect
    - Transform, Distort and Perspective
    - Vertically flip the input video (avfilter.vflip)
  * - flippo
    - Video Effect
    - Transform, distort and Perspective
    - Flipping X and Y axis (frei0r.flippo)
  * - `FM Oscillator <https://www.mltframework.org/plugins/FilterLadspa-1415/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1415)
  * - `Foldover distortion <https://www.mltframework.org/plugins/FilterLadspa-1213/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1213)
  * - `Fractionally Addressed Delay Line <https://www.mltframework.org/plugins/FilterLadspa-1192/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1192)
  * - :ref:`freeze`
    - Video Effect
    - Motion
    - Freeze video on a chosen frame (freeze)
  * - `Frequency tracker <https://www.mltframework.org/plugins/FilterLadspa-1418/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1418)
  * - :ref:`gain`
    - Audio Effect
    - Audio Correction
    - Adjust the audio volume without keyframes (volume)
  * - Gamma
    - Video Effect
    - Color and Image correction
    - Adjusts the gamma value of a source image (frei0r.gamma)
  * - :ref:`gamma_effect`
    - Video Effect
    - Color and Image correction
    - Change gamma color value (gamma)
  * - `Gate <https://www.mltframework.org/plugins/FilterLadspa-1410/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1410)
  * - gaussian_blur
    - Video Effect
    - Blur and Sharpen
    - Apply Gaussian Blur filter (avfilter.gblur)
  * - `Giant flange <https://www.mltframework.org/plugins/FilterLadspa-1437/>`_
    - Audio Effect
    - Stylize
    - LADSPA plugin (ladspa.1437)
  * - `Glame Bandpass Analog Filter <https://www.mltframework.org/plugins/FilterLadspa-1893/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1893)
  * - `Glame Bandpass Filter <https://www.mltframework.org/plugins/FilterLadspa-1892/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1892)
  * - `GLAME Butterworth Highpass <https://www.mltframework.org/plugins/FilterLadspa-1904/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1904)
  * - `GLAME Butterworth Lowpass <https://www.mltframework.org/plugins/FilterLadspa-1903/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1903)
  * - `Glame Butterworth X-over Filter <https://www.mltframework.org/plugins/FilterLadspa-1902/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1902)
  * - `Glame Highpass Filter <https://www.mltframework.org/plugins/FilterLadspa-1890/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1890)
  * - `Glame Lowpass Filter <https://www.mltframework.org/plugins/FilterLadspa-1891/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1891)
  * - glitch0r
    - Video Effect
    - Motion
    - Adds glitches and block shifting (frei0r.glitch0r)
  * - :ref:`glow`
    - Video Effect
    - Blur and Hide
    - Creates a Glamorous Glow (frei0r.glow)
  * - `Gong beater <https://www.mltframework.org/plugins/FilterLadspa-1439/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1439)
  * - `Gong model <https://www.mltframework.org/plugins/FilterLadspa-1424/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1424)
  * - gradfun
    - Video Effect
    - Grain and Noise
    - Debands video quickly using gradients (avfilter.gradfun)
  * - :ref:`grain`
    - Video Effect
    - Deprecated
    - Grain over the image (grain)
  * - grain_extract
    - Compositions
    -
    - Perform an RGB[A] grain-extract operation between the pixel sources (frei0r.grain_extract)
  * - grain_merge
    - Compositions
    -
    - Perform an RGB[A] grain-merge operation between the pixel sources (frei0r.grain_merge)
  * - :ref:`greyscale_effect`
    - Video Effect
    - Color and Image correction
    - Discard color information (greyscale)
  * - `GSM simulator <https://www.mltframework.org/plugins/FilterLadspa-1215/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1215)
  * - `GVerb <https://www.mltframework.org/plugins/FilterLadspa-1216/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1216)
  * - haas
    - Audio Effect
    - Audio
    - Apply Haas Stereo Enhancer (avfilter.haas)
  * - hard_limiter
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1413)
  * - hardlight
    - Compositions
    -
    - Perform an RGB[A] hardlight operation between the pixel sources (frei0r.hardlight)
  * - `Harmonic generator <https://www.mltframework.org/plugins/FilterLadspa-1220/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1220)
  * - hdcd
    - Audio Effect
    - Audio
    - Apply High Definition Compatible Digital (HDCD) decoding (avfilter.hdcd)
  * - `Hermes Filter <https://www.mltframework.org/plugins/FilterLadspa-1200/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1200)
  * - `Higher Quality Pitch Scaler <https://www.mltframework.org/plugins/FilterLadspa-1194/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1194)
  * - highpass
    - Audio Effect
    - Audio
    - Apply a high-pass filter with 3dB point frequency (avfilter.highpass)
  * - highshelf
    - Audio Effect
    - Audio
    - Apply a high shelf filter (avfilter.highshelf)
  * - `Hilbert transformer <https://www.mltframework.org/plugins/FilterLadspa-1440/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1440)
  * - histogram_equalizer
    - Video Effect
    - Color and Image correction
    - This filter applies a global color histogram equalization on a per-frame basis (avfilter.histeq)
  * - :ref:`histogram`
    - Video Effect
    - Utility
    - Compute and draw a color distribution histogram for the input video (avfilter.histogram)
  * - hqx
    - Video Effect
    - Image Adjustment
    - Scale the input by 2, 3 or 4 using the hq*x magnification algorithm (avfilter.hqx)
  * - :ref:`hue`
    - Compositions
    -
    - Perform a conversion to hue only of the source input1 using the hue of input2 (frei0r.hue)
  * - :ref:`hue_shift`
    - Video Effect
    - Color and Image correction
    - Shifts the hue of a source image (frei0r.hueshift0r)
  * - `Impulse convolver <https://www.mltframework.org/plugins/FilterLadspa-1199/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1199)
  * - interlace_field_order
    - Video Effect
    - Image Adjustment
    - Transform the field order of the input video (avfilter.fieldorder)
  * - interleavedeinterleave
    - Video Effect
    - Image Adjustment
    - Deinterleave or interleave fields (avfilter.il)
  * - Invert
    - Video Effect
    - Color and Image correction
    - AllNegate (invert) the input video (avfilter.negate)
  * - :ref:`invert_effect`
    - Video Effect
    - Color and Image correction
    - Invert colors (invert)
  * - invert0r
    - Video Effect
    - Color and Image correction
    - Inverts all colors of a source image (frei0r.invert0r)
  * - `Inverter <https://www.mltframework.org/plugins/FilterLadspa-1429/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1429)
  * - :ref:`k-means_clustering`
    - Video Effect
    - Deprecated
    - Clusters of a source image by color and spatial distance (frei0r.cluster)
  * - `Karaoke <https://www.mltframework.org/plugins/FilterLadspa-1409/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1409)
  * - kernel_deinterlacer
    - Video Effect
    - Image Adjustment
    - Deinterlace input video by applying Donald Graft’s adaptive kernel deinterlacing. Works on interlaced parts of a video to produce progressive frames (avfilter.kerndeint)
  * - :ref:`keysplillm0pup`
    - Video Effect
    - Alpha, Mask and Keying
    - Reduces the visibility of key color spill in chroma keying (frei0r.keyspillm0pup)
  * - kirsch
    - Video Effect
    - Misc
    - Apply kirsch operator (avfilter.kirsch)
  * - `L/C/R Delay <https://www.mltframework.org/plugins/FilterLadspa-1436/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1436)
  * - ladspa
    - Audio Effect
    - Audio
    - Process audio using LADSPA plugins (ladspa)
  * - :ref:`lens_correction`
    - Video Effect
    - Transform, Distort and Perspective
    - Allow compensation of lens distortion (frei0r.lenscorrection)
  * - :ref:`lens_correction`
    - Video Effect
    - Transform, Distort and Perspective
    - Correct radial lens distortion (avfilter.lenscorrection)
  * - lenscorrection
    - Video Effect
    - misc
    -
  * - :ref:`letterb0xed`
    - Video Effect
    - Transform, Distort and Perspective
    - Adds black borders at the top and bottom for cinema look (frei0r.letterb0xed)
  * - :ref:`levels`
    - Video Effect
    - Color and Image correction
    - Adjust levels (frei0r.levels)
  * - `LFO Phaser <https://www.mltframework.org/plugins/FilterLadspa-1217/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1217)
  * - :ref:`lift_gamma_gain_effect`
    - Video Effect
    - Color Correction
    -
  * - lightshow
    - Video Effect
    - On Master
    - An audio visualization filter that colors the image proportional to the magnitude of the audio spectrum (lightshow)
  * - lighten
    - Compositions
    -
    - Perform a lighten operation between two sources (maximum value of both sources) (frei0r.lighten)
  * - limiter
    - Video Effect
    - Color and Image correction
    - Limits the pixel components values to the specified range [min,max] (avfilter.limiter)
  * - loudness_meter
    - Audio Effect
    - Audio
    - Measure audio loudness as recommended by EBU R128 (Loudness_meter)
  * - lowpass
    - Audio Effect
    - Audio
    - EBU R128 loudness normalization (avfilter.loudnorm)
  * - lowshelf
    - Audio Effect
    - Audio
    - Apply a low-pass filter with 3dB point frequency (avfilter.lowpass)
  * - lighten
    - Audio Effect
    - Audio
    - Apply a low shelf filter (avfilter.lowshelf)
  * - `LS Filter <https://www.mltframework.org/plugins/FilterLadspa-1908/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1908)
  * - luma
    - Composition
    - -
    - Applies a stationary transition between the current and the next frames (luma)
  * - :ref:`lumakey`
    - Video Effect
    - Alpha, Mask and Keying
    - This filter modifies image’s alpha channel as a function of its luma value. This is used together with a compositor to combine two images so that bright or dark areas of source image are overwritten on top of the destination image (lumakey)
  * - lumaliftgaingamma
    - Video Effect
    - Color and Image correction
    - Filter can be used to apply lift gain and gamma corrections to luma values of an image (lumaliftgammagain)
  * - :ref:`luminance`
    - Video Effect
    - Color and Image correction
    - Creates a luminance map of the image (frei0r.luminance)
  * - `Mag's Notch Filter <https://www.mltframework.org/plugins/FilterLadspa-1894/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1894)
  * - `Matrix Spatialiser <https://www.mltframework.org/plugins/FilterLadspa-1422/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1422)
  * - `Matrix: MS to Stereo <https://www.mltframework.org/plugins/FilterLadspa-1421/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1421)
  * - `Matrix: Stereo to MS <https://www.mltframework.org/plugins/FilterLadspa-1420/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1420)
  * - lighten
    - Compositions
    -
    - Replace the alpha channel of track A with the luma channel from track B (matte)
  * - mcompand
    - Audio Effect
    - Audio
    - Multiband Compress or expand audio dynamic range (avfilter.mcompand)
  * - :compositions
    - Compositions
    -
    - Perform an RGB[A] multiply operation between the pixel sources (frei0r.multiply)
  * - :ref:`medians`
    - Video Effect
    - Deprecated
    - Implements several median-type filters (frei0r.medians)
  * - :ref:`mirror_effect`
    - Video Effect
    - Transform, Distort and Perspective
    - Flip your image in any direction (mirror)
  * - mixdown
    - Audio Effect
    - Audio
    - Mix all channels of audio into a mono signal and output it as N channels (mono)
  * - `Modulatable delay <https://www.mltframework.org/plugins/FilterLadspa-1419/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1419)
  * - :ref:`mono_amplifier`
    - Audio Effect
    - Misc
    -
  * - mono_to_stereo_splitter
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1406)
  * - monochrome
    - Video Effect
    - Misc
    - Convert video to gray using custom color filter (avfilter.monochrome)
  * - motion_compensation_deinterlacing
    - Video Effect
    - Image Adjustment
    - Apply motion-compensation deinterlacing (avfilter.mcdeint)
  * - :ref:`motion_tracker`
    - Video Effect
    - Alpha, Mask and Keying
    - Select a zone to follow its movements (opencv.tracker)
  * - `Multiband EQ <https://www.mltframework.org/plugins/FilterLadspa-1197/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1197)
  * - multiply
    - Compositions
    -
    - Perform an RGB[A] multiply operation between the pixel sources (frei0r.multiply)
  * - `Multivoice Chorus <https://www.mltframework.org/plugins/FilterLadspa-1201/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1201)
  * - :ref:`mute`
    - Audio Effect
    - Audio Correction
    -
  * - :ref:`ndvi_filter`
    - Video Effect
    - Utility
    - This filter creates a false image from a visible + infrared source (frei0r.ndvi)
  * - :ref:`nervous`
    - Video Effect
    - Motion
    - Flushes frames in time in a nervous way (frei0r.nervous)
  * - nikon_d90_stairstepping_fix
    - Video Effect
    - Utility
    - Removes stairstepping artifacts from Nikon D90's 720p videos. Sharp lines in videos from the Nikon D90 show steps each 8th or 9th line, assumedly due to poor downsampling. These can be smoothed out with this filter if they become too annoying (frei0r.d90stairsteppingfix)
  * - normalise
    - Audio Effect
    - Audio Correction
    - Correct audio loudness as recommended by EBU R128 (loudness)
  * - normalise
    - Audio Effect
    - Audio Correction
    - Dynamically normalise the audio volume (volume)
  * - normaliz0r
    - Video Effect
    - Color and Image correction
    - Normalize (aka histogram stretch, contrast stretch) (frei0r.normaliz0r)
  * - normalize_rgb_video
    - Video Effect
    - Color and Image correction
    - Normalize RGB video (aka histogram stretching, contrast stretching). See: https://en.wikipedia.org/wiki/Normalization_(image_processing) (avfilter.normalize)
  * - :ref:`nosync0r`
    - Video Effect
    - Transform, Distort and Perspective
    - Broken TV (frei0r.nosync0r)
  * - :ref:`obscure_effect`
    - Video Effect
    - Blur and Hide
    -
  * - :ref:`oldfilm_effect`
    - Video Effect
    - Stylize
    - Moves the Picture up and down and random brightness change (oldfilm)
  * - :ref:`oscilloscope`
    - Video Effect
    - Utility
    - 2D video oscilloscope (frei0r.pr0file)
  * - :ref:`oscilloscope`
    - Video Effect
    - Utility
    - 2D Video Oscilloscope (avfilter.oscilloscope)
  * - overlay
    - Compositions
    -
    - Perform an RGB[A] overlay operation between the pixel sources, using the generalised algorithm: D = A * (B + (2 * B) * (255 - A)) (frei0r.overlay)
  * - pad
    - Video Effect
    - Stylize
    -
  * - pan
    - Audio Effect
    - Audio Channels
    - Adjust the left/right spread of a channel (panner)
  * - phase
    - Video Effect
    - Image Adjustment
    - Delay interlaced video by one field time so that the field order changes (avfilter.phase)
  * - photosensitivity
    - Video Effect
    - Misc
    - Filter out photosensitive epilepsy seizure-inducing flashes (avfilter.photosensitivity)
  * - pillar_echo
    - Video Effect
    - Transform, Distort and Perspective
    - Create an echo effect (blur) outside of an area of interest (pillar_echo)
  * - `Pitch Scaler <https://www.mltframework.org/plugins/FilterLadspa-1193/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1193)
  * - :ref:`pixelize`
    - Video Effect
    - Stylize
    - Pixelize input image (frei0r.pixeliz0r)
  * - `Plate reverb <https://www.mltframework.org/plugins/FilterLadspa-1423/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1423)
  * - `Pointer cast distortion <https://www.mltframework.org/plugins/FilterLadspa-1910/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1910)
  * - :ref:`pan_and_zoom`
    - Video Effect
    - Transform, Distort and Perspective
    - Adjust size and position of clip (affine)
  * - posterize
    - Video Effect
    - Stylize
    - Posterizes image by reducing the number of colors used in image (frei0r.posterize)
  * - pp
    - Video Effect
    - Utility
    -
  * - prewitt
    - Video Effect
    - Stylize
    - Apply prewitt operator to input video stream (avfilter.prewitt)
  * - :ref:`primaries`
    - Video Effect
    - Stylize
    - Reduce image to primary colors (frei0r.primaries)
  * - r
    - Video Effect
    - Color and Image correction
    - Extracts Red from Image (frei0r.R)
  * - `Rate shifter <https://www.mltframework.org/plugins/FilterLadspa-1417/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1417)
  * - :ref:`mask0mate`
    - Video Effect
    - Transform, Distort and Perspective
    - Creates a square alpha-channel mask (frei0r.mask0mate)
  * - :ref:`regionalize`
    - Compositions
    -
    - Use alpha channel of another clip to create a transition (region)
  * - rescale
    - Video Effect
    - Image Adjustment
    - Scale the producer video frames size to match the consumer. This filter is designed for use as a normaliser for the loader producer (rescale)
  * - `Retro Flanger <https://www.mltframework.org/plugins/FilterLadspa-1208/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1208)
  * - `Reverse Delay (5s max) <https://www.mltframework.org/plugins/FilterLadspa-1605/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1605)
  * - :ref:`rgb_adjustment`
    - Video Effect
    - Color and Image correction
    - Simple color adjustment (frei0r.coloradj_RGB)
  * - rgb_parade_MLT
    - Video Effect
    - Utility
    - Display a histogram of R, G and B components of the video data (frei0r.rgbparade).
  * - rgba_shift
    - Video Effect
    - Stylize
    - Shift R/G/B/A pixels horizontally and/or vertically (avfilter.rgbashift)
  * - :ref:`rgbnoise`
    - Video Effect
    - Deprecated
    - Adds RGB noise to image (frei0r.rgbnoise)
  * - :ref:`rgbsplit0r`
    - Video Effect
    - Stylize
    - RGB splitter and shifting (frei0r.rgbsplit0r)
  * - `Ringmod with LFO <https://www.mltframework.org/plugins/FilterLadspa-1189/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1189)
  * - `Ringmod with two inputs <https://www.mltframework.org/plugins/FilterLadspa-1188/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1188)
  * - roberts
    - Video Effect
    - Stylize
    - Apply roberts cross operator to input video stream (avfilter.roberts)
  * - :ref:`rotate_(keyframable)`
    - Video Effect
    - Transform, Distort and Perspective
    - Rotate clip in any 3 directions (affine)
  * - :ref:`rotate_and_shear`
    - Video Effect
    - Transform, Distort and Perspective
    - Rotate clip in any 3 directions (affine)
  * - rubber_band_mono_pitch_shifter
    - Audio Effect
    - Audio
    - LADSPA plugin (ladspa.2979)
  * - rubber_band_mono_pitch_shifter
    - Audio Effect
    - Audio
    - Adjust the audio pitch using the Rubberband library (rbpitch)
  * - rubber_band_mono_pitch_shifter
    - Audio Effect
    - Audio
    - LADSPA plugin (ladspa.2979)
  * - :ref:`rotoscoping`
    - Video Effect
    - Alpha, Mask and Keying
    - Keyframable vector based rotoscoping (rotoscoping)
  * - :ref:`saturation`
    - Composition
    -
    - Perform a conversion to saturation only of the source input1 using the saturation level of input2 (frei0r.saturation)
  * - :ref:`saturation`
    - Video Effect
    - Color and Image correction
    - Adjusts the saturation of a source image (frei0r.saturat0r)
  * - `SC1 <https://www.mltframework.org/plugins/FilterLadspa-1425/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1425)
  * - `SC2 <https://www.mltframework.org/plugins/FilterLadspa-1426/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1426)
  * - `SC3 <https://www.mltframework.org/plugins/FilterLadspa-1427/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1427)
  * - `SC4 <https://www.mltframework.org/plugins/FilterLadspa-1882/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1882)
  * - `SC4 mono <https://www.mltframework.org/plugins/FilterLadspa-1916/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1916)
  * - scale_cuda
    - Video Effect
    - Stylize
    -
  * - scale_qsv
    - Video Effect
    - misc
    - QuickSync video scaling and format conversion (avfilter.scale_qsv)
  * - :ref:`scanline0r`
    - Video Effect
    - Generate
    - Interlaced black lines (frei0r.scanline0r)
  * - scdet
    - Video Effect
    - Misc
    - Detect video scene change (avfilter.scdet)
  * - :ref:`scratchlines`
    - Video Effect
    - Grain and Noise
    - Scratchlines over the picture (lines)
  * - :ref:`screen`
    - Compositions
    -
    - Perform an RGB[A] screen operation between the pixel sources, using the generalised algorithm: D = 255 - (255 - A) * (255 - B) (frei0r.screen)
  * - scroll
    - Video Effect
    - Misc
    - Scroll input video (avfilter.scroll)
  * - `SE4 <https://www.mltframework.org/plugins/FilterLadspa-1883/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1883)
  * - :ref:`sepia_effect`
    - Video Effect
    - Color and Image correction
    - Turn clip colors to sepia (sepia)
  * - set_range
    - Video Effect
    - Blur and Sharpen
    - Force color range for the output video frame (avfilter.setrange)
  * - shape_adaptive_blur
    - Video Effect
    - Color and Image correction
    - Shape Adaptive Blur (avfliter.sab)
  * - shapealpha
    - Video Effect
    - Alpha, Mask, and Keying
    - Create an alpha channel (transparency) based on another resource (shape)
  * - sharp-unsharp
    - Video Effect
    - Blur and Sharpen
    - Sharpen or Blur your video (avfilter.unsharp)
  * - :ref:`sharpen`
    - Video Effect
    - Deprecated
    - Unsharp masking (port from Mplayer) (frei0r.sharpness)
  * - shear
    - Video Effect
    - Misc
    - Shear transform the input image (avfilter.shear)
  * - shufflepixels
    - Video Effect
    - Misc
    - Shuffle video pixels (avfilter.shufflepixels)
  * - shuffleplanes
    - Video Effect
    - misc
    -
  * - :ref:`sigmoidaltransfer`
    - Video Effect
    - Stylize
    - Desaturates image and creates a particular look that could be called Stamp, Newspaper, or Photocopy (frei0r.sigmoidaltransfer)
  * - `Signal sifter <https://www.mltframework.org/plugins/FilterLadspa-1210/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1210)
  * - signalstats
    - Video Effect
    - Stylize
    -
  * - silencedetect
    - Video Effect
    - Stylize
    - Detect silence (avfilter.silencedetect)
  * - `Simple amplifier <https://www.mltframework.org/plugins/FilterLadspa-1181/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1181)
  * - `Simple delay line cubic spline interpolation <https://www.mltframework.org/plugins/FilterLadspa-1900/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1900)
  * - `Simple delay line linear interpolation <https://www.mltframework.org/plugins/FilterLadspa-1899/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1899)
  * - `Simple Delay Line, noninterpolating <https://www.mltframework.org/plugins/FilterLadspa-1898/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1898)
  * - simple_high_pass_filter
    - Audio Effect
    - Audio
    - LADSPA plugin (ladspa.1042)
  * - simple_low_pass_filter
    - Audio Effect
    - Audio
    - LADSPA plugin (ladspa.1041)
  * - sine_oscillator
    - Audio Effect
    - Audio
    - LADSPA plugin (ladspa.1044)
  * - sine_oscillator
    - Audio Effect
    - Audio
    - LADSPA plugin (ladspa.1045)
  * - sine_oscillator
    - Audio Effect
    - Audio
    - LADSPA plugin (ladspa.1046)
  * - `Single band parametric <https://www.mltframework.org/plugins/FilterLadspa-1203/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1203)
  * - `Sinus wavewrapper <https://www.mltframework.org/plugins/FilterLadspa-1198/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1198)
  * - slide
    - Compositions
    -
    - Slide image from one side to another (composite)
  * - smartblur
    - Video Effect
    - Blur and Sharpen
    - Blur the input video without impacting the outlines (avfilter.smartlblur)
  * - `Smooth Decimator <https://www.mltframework.org/plugins/FilterLadspa-1414/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1414)
  * - :ref:`sobel`
    - Video Effect
    - Stylize
    - Sobel filter (frei0r.sobel)
  * - :ref:`sobel`
    - Video Effect
    - Stylize
    - Apply sobel operators to input video stream (avfilter.sobel)
  * - :ref:`softglow`
    - Video Effect
    - Stylize
    - Does softglow effect on highlights (frei0r.softglow)
  * - softlight
    - Compositions
    -
    - Perform an RGB[A] softlight operation between the pixel sources (frei0r.softlight)
  * - :ref:`sat`
    - Video Effect
    - Color and Image correction
    - Changes Slope, Offset, and Power of the color components, and the overall Saturation, according to the ASC CDL (Color Decision List) (frei0r.sopsat)
  * - `Sox band <https://www.mltframework.org/plugins/FilterSox-band/>`_
    - Audio Effect
    - Audio
    - Process audio using a SoX effect (sox)
  * - `Sox band <https://www.mltframework.org/plugins/FilterSox-band/>`_
    - Audio Effect
    - Audio
    - Sox band audio effect (sox)
  * - `Sox bass <https://www.mltframework.org/plugins/FilterSox-bass/>`_
    - Audio Effect
    - Audio
    - Sox bass audio effect (sox)
  * - `Sox echo <https://www.mltframework.org/plugins/FilterSox-echo/>`_
    - Audio Effect
    - Audio
    - Sox echo audio effect (sox)
  * - `Sox flanger <https://www.mltframework.org/plugins/FilterSox-flanger/>`_
    - Audio Effect
    - Audio
    - Sox flanger audio effect (sox)
  * - `Sox gain <https://www.mltframework.org/plugins/FilterSox-gain/>`_
    - Audio Effect
    - Audio
    - Sox gain audio effect (sox)
  * - `Sox phaser <https://www.mltframework.org/plugins/FilterSox-phaser/>`_
    - Audio Effect
    - Audio
    - Sox phaser audio effect (sox)
  * - `Sox stretch <https://www.mltframework.org/plugins/FilterSox-stretch/>`_
    - Audio Effect
    - Audio
    - Sox stretch audio effect (sox)
  * - :ref:`spillsuppress`
    - Video Effect
    - Enhancement
    -
  * - speechnorm
    - Audio Effect
    - Audio
    - Speech Normalizer (avfilter.speechnorm)
  * - spill_suppress
    - Video Effect
    - Alpha, Mask and Keying
    - Remove green or blue spill light from subjects shot in front of a green or blue screen (frei0r.spillsupress)
  * - spotremover
    - Video Effect
    - Alpha, Mask and Keying
    - Replace an area with interpolated pixels. The new pixel values are interpolated from the nearest pixel.
  * - :ref:`square_blur`
    - Video Effect
    - Blur and Hide
    - Square Blur (frei0r.squareblur)
  * - `State Variable Filter <https://www.mltframework.org/plugins/FilterLadspa-1214/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1214)
  * - `Step Demuxer <https://www.mltframework.org/plugins/FilterLadspa-1212/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1212)
  * - :ref:`stereo_amplifier` (version >= 0.9.10)
    - Audio Effect
    - Audio Correction
    - LADSPA plugin (ladspa.1049)
  * - stereo_to_mono
    - Audio Effect
    - Audio Correction
    - Copy one channel to another (channelcopy)
  * - stereoscopic_3d
    - Video Effect
    - VR360 and 3D
    - Convert between different stereoscopic image formats (avfilter.stereo3d)
  * - stereotools
    - Audio Effect
    - Audio
    - Apply various stereo tools (avfilter.stereotools)
  * - stereowiden
    - Audio Effect
    - Audio
    - Apply stereo widening effect (avfilter.stereowiding)
  * - subtract
    - Compositions
    -
    - Perform an RGB[A] subtract operation of the pixel source input2 from input1 (frei0r.subtract)
  * - super2xsai
    - Video Effect
    - Image Adjustment
    - Scale the input by 2x using the Super2xSaI pixel art algorithm (avfilter.super2xsai)
  * - superequalizer
    - Audio Effect
    - Audio
    - Apply 18 band equalization filter (avfilter.superequalizer)
  * - `Surround matrix encoder <https://www.mltframework.org/plugins/FilterLadspa-1401/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1401)
  * - swap_channels
    - Audio Effect
    - Audio Channels
    - Move the left channel to the right and the right-to-left (channelswap)
  * - swapuv
    - Video Effect
    - Color and Image correction
    - Swap U and V components (avfilter.swapuv)
  * - `Tape Delay Simulation <https://www.mltframework.org/plugins/FilterLadspa-1211/>`_
    - Audio Effect
    - Audio Channels
    - Move the left channel to the right and the right-to-left (channelswap)
  * - `TAP AutoPanner <https://www.mltframework.org/plugins/FilterLadspa-2146/>`_
    - Audio Effect
    - TAP Plugins
    - LADSPA plugin (ladspa.2146)
  * - `TAP Chrous/Flanger <https://www.mltframework.org/plugins/FilterLadspa-2159/>`_
    - Audio Effect
    - TAP Plugins
    - LADSPA plugin (ladspa.2159)
  * - `TAP DeEsser <https://www.mltframework.org/plugins/FilterLadspa-2147/>`_
    - Audio Effect
    - TAP Plugins
    - LADSPA plugin (ladspa.2147)
  * - `TAP Dynamics (M) <https://www.mltframework.org/plugins/FilterLadspa-2152/>`_
    - Audio Effect
    - TAP Plugins
    - LADSPA plugin (ladspa.2152)
  * - `TAP Dynamics (St) <https://www.mltframework.org/plugins/FilterLadspa-2153/>`_
    - Audio Effect
    - TAP Plugins
    - LADSPA plugin (ladspa.2153)
  * - `TAP Equalizer <https://www.mltframework.org/plugins/FilterLadspa-2141>`_
    - Audio Effect
    - TAP Plugins
    - LADSPA plugin (ladspa.2141)
  * - `TAP Equalizer/BW <https://www.mltframework.org/plugins/FilterLadspa-2151/>`_
    - Audio Effect
    - TAP Plugins
    - LADSPA plugin (ladspa.2151)
  * - `TAP Fractal Doubler <https://www.mltframework.org/plugins/FilterLadspa-2156/>`_
    - Audio Effect
    - TAP Plugins
    - LADSPA plugin (ladspa.2156)
  * - `TAP Pink/Fractal Noise <https://www.mltframework.org/plugins/FilterLadspa-2156/>`_
    - Audio Effect
    - TAP Plugins
    - LADSPA plugin (ladspa.2155)
  * - `TAP Pitch Shifter <https://www.mltframework.org/plugins/FilterLadspa-2150/>`_
    - Audio Effect
    - TAP Plugins
    - LADSPA plugin (ladspa.2150)
  * - `TAP Reflector <https://www.mltframework.org/plugins/FilterLadspa-2154/>`_
    - Audio Effect
    - TAP Plugins
    - LADSPA plugin (ladspa.2154)
  * - `TAP Reverberator <https://www.mltframework.org/plugins/FilterLadspa-2142/>`_
    - Audio Effect
    - TAP Plugins
    - LADSPA plugin (ladspa.2142)
  * - `TAP Rotary Speaker <https://www.mltframework.org/plugins/FilterLadspa-2149/>`_
    - Audio Effect
    - TAP Plugins
    - LADSPA plugin (ladspa.2149)
  * - `TAP Scaling Limiter <https://www.mltframework.org/plugins/FilterLadspa-2145/>`_
    - Audio Effect
    - TAP Plugins
    - LADSPA plugin (ladspa.2145)
  * - `TAP Sigmoid Booster <https://www.mltframework.org/plugins/FilterLadspa-2145/>`_
    - Audio Effect
    - TAP Plugins
    - LADSPA plugin (ladspa.2157)
  * - `TAP Stereo Echo <https://www.mltframework.org/plugins/FilterLadspa-2143/>`_
    - Audio Effect
    - TAP Plugins
    - LADSPA plugin (ladspa.2143)
  * - `TAP Tremolo <https://www.mltframework.org/plugins/FilterLadspa-2144/>`_
    - Audio Effect
    - TAP Plugins
    - LADSPA plugin (ladspa.2144)
  * - `TAP TubeWarmth <https://www.mltframework.org/plugins/FilterLadspa-2158/>`_
    - Audio Effect
    - TAP Plugins
    - LADSPA plugin (ladspa.2158)
  * - `TAP Vibrato <https://www.mltframework.org/plugins/FilterLadspa-2148/>`_
    - Audio Effect
    - TAP Plugins
    - LADSPA plugin (ladspa.2148)
  * - tape_delay_simulation
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1211)
  * - :ref:`techicolor`
    - Video Effect
    - Color and Image correction
    - Oversaturate the color in video, like in old Technicolor movies (tcolor)
  * - :ref:`tehroxx0r`
    - Video Effect
    - Misc
    - Something videowall-ish (frei0r.tehRoxx0r)
  * - thistogram
    - Compositions
    -
    - Uses Input 1 as a UV Map to distort Input 2 (frei0r.uvmap)
  * - :ref:`threshold_effect`
    - Video Effect
    - Stylize
    - Thresholds a source image (frei0r.threshold0r)
  * - :ref:`timeout_indicator`
    - Video Effect
    - Utility
    - Timeout indicators e.g. for slides (frei0r.timeout)
  * - :ref:`tint`
    - Video Effect
    - Color and Image correction
    - Maps source image luminance between two colors specified (frei0r.tint0r)
  * - tmedian
    - Video Effect
    - Misc
    - Pick median pixels from successive frames (avfilter.tmedian)
  * - tmidequalizer
    - Video Effect
    - Misc
    - Apply Temporal Midway Equalization (avfilter.tmidequalizer)
  * - tonemap_vaapi
    - Video Effect
    - Misc
    - VAAPI VPP for tone-mapping (avfilter.tonemap_vaapi)
  * - :ref:`transform`
    - Video Effect
    - Transform, Distort and Perspective
    - Position, Scale and opacity, (qtblend)
  * - :ref:`transform`
    - Compositions
    -
    - Perform an affine transform on for compositing (affine)
  * - `Transient mangler <https://www.mltframework.org/plugins/FilterLadspa-1206/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1206)
  * - transparency
    - Video Effect
    - Alpha, Mask and Keying
    - Tunes the alpha channel (frei0r.transparency)
  * - transpose
    - Video Effect
    - Transform, Distort and Perspective
    - Transpose rows with columns in the input video and optionally flip it (avfilter.transpose)
  * - treble
    - Audio Effect
    - Audio
    - Boost or cut upper frequencies (avfilter.treble)
  * - tremolo
    - Audio Effect
    - Audio
    - Apply tremolo effect (avfilter.tremolo)
  * - `Triple band parametric with shelves <https://www.mltframework.org/plugins/FilterLadspa-1204/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1204)
  * - :ref:`typewriter`
    - Text Effect
    - Misc
    - Typerwriter effect v0.3.3 (typewriter)
  * - untile
    - Video Effect
    - Misc
    - Untile a frame into a sequence of frames (avfilter.untile)
  * - v360
    - Video Effect
    - Misc
    - Convert 360 projection of video (avfilter.v360)
  * - value
    - Transition
    -
    - Applies a stationary transition between the current and next frames (composite)
  * - `Valve rectifier <https://www.mltframework.org/plugins/FilterLadspa-1405/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1405)
  * - `Valve saturation <https://www.mltframework.org/plugins/FilterLadspa-1209/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1209)
  * - :ref:`vectorscope_MLT`
    - Video Effect
    - Utility
    - Display a vectorscope of the video data (frei0r.vectorscope)
  * - :ref:`vectorscope`
    - Video Effect
    - Utility
    - Display 2 color component values in the two dimensional graph (which is called a vectorscope) (avfilter.vectorscope)
  * - vertigo
    - Video Effect
    - Motion
    - Alpha blending with zoomed and rotated images (frei0r.vertigo)
  * - vibrato
    - Audio Effect
    - Audio
    - Apply vibrato effect (avfilter.vibrato)
  * - video_noise_generator
    - Video Effect
    - Grain and Noise
    - Add noise on video input frame (avfilter.noise)
  * - videoquality_measurement
    - Transition
    -
    - This performs the PSNR and SSIm video quality measurements by comparing the B frames to the reference frame A. It outputs the numbers to stdout in space-delimited format for easy use by another tool. The bottom half of the B frame is placed below the top half of the A frame for visual comparison (vqm)
  * - :ref:`video_values`
    - Video Effect
    - Utility
    - Measure video values (frei0r.pr0be)
  * - :ref:`vignette`
    - Video Effect
    - Generate
    - Natural Lens vignetting effect (frei0r.vignette)
  * - :ref:`vignette_effect`
    - Video Effect
    - Generate
    - Adjustable Vignette (vignette)
  * - vocoder
    - Audio Effect
    - Audio
    - LADSPA plugin (ladspa.1337)
  * - :ref:`volume_(keyframable)`
    - Audio Effect
    - Audio Correction
    - Adjust the audio volume with keyframes (volume)
  * - vpp_qsv
    - Video Effect
    - Misc
    - Quick Sync Video VPP (avfilter.vpp_qsv)
  * - vr360_equirectangular_mas
    - Video Effect
    - VR360 and 3D
    - Adds a black matte to the frame. Use this if you filmed using a 360 camera but only want to use part of the 360 image - for example if you and the film crew occupy the 90 degrees behind the camera (frei0r.bigsh0t_eq_mask)
  * - vr360_equirectangular_to_rectilinear
    - Video Effect
    - VR360 and 3D
    - converts an equirectangular frame (panoramic) to a rectilinear frame (what you're used to seeing). Can be used to preview what will be shown in a 360 video viewer. Delayed frame blitting mapping on a time bitmap (frei0r.bigsh0t_eq_to_rect)
  * - vr360_hemispherical_to_equirectangular
    - Video Effect
    - VR360 and 3D
    - Converts a video frame with two hemispherical images to a single equirectangular frame. The plugin assumes that both hemispheres are in the frame (freior.bigsh0t_hemi_to_eq)
  * - vr360_rectilinear_to_equirectangular
    - Video Effect
    - VR360 and 3D
    - Converts a rectilinear (a normal-looking) image to an equirectangular image. Use this together with transform 360 to place "normal" footage in a 360 movie (frei0r.bigsh0t_rect_to_eq)
  * - vr360_stabilize
    - Video Effect
    - VR360 and 3D
    - Stabilizes 360 footage. The plugin works in two phases - analysis and stabilization. When analyzing footage, it detects frame-to-frame rotation, and when stabilizing it tries to correct high-frequency motion (shake) (frei0r.bighsh0t_stabilize_360)
  * - vr360_transform
    - Video Effect
    - VR360 and 3D
    - Rotates a panoramic image (frei0r.bigsh0t_transform_360)
  * - VyNil (Vinyl Effect)
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1905)
  * - :ref:`wave_effect`
    - Video Effect
    - Deprecated
    - Makes waves on your clip with keyframes (wave)
  * - `Wave shaper <https://www.mltframework.org/plugins/FilterLadspa-1187/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1187)
  * - `Wave Terrain Oscillator <https://www.mltframework.org/plugins/FilterLadspa-1412/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1412)
  * - :ref:`white_balance`
    - Video Effect
    - Color Correction
    -
  * - :ref:`white_balance`
    - Video Effect
    - Color and Image correcting
    - Adjust the white balance / color temperature (frei0r.balanc0r)
  * - :ref:`white_balance(lms)`
    - Video Effect
    - Color and Image correcting
    - Do simple color correction, in a physically meaningful way (frei0r.colgate)
  * - :ref:`wipe`
    - Compositions
    -
    - Applies a stationary transition between the current and next frames (composite)
  * - xbr
    - Video Effect
    - Image Adjustment
    - Apply the xBR high-quality magnification filter which is designed for pixel art. It follows a set of edge-detection rules, see https://forums.libreto.com/t/xbr-algorithm-tutorial/123 (avfilter.xbr)
  * - yadif_cuda
    - Video Effect
    - Misc
    - Deinterlace CUDA frames (avfilter.yadif_cuda)
  * - yaepblur
    - Video Effect
    - Misc
    - Yet another edge preserving blur filter (avfilter.yaepblur)
  * - `z-1 <https://www.mltframework.org/plugins/FilterLadspa-1428/>`_
    - Audio Effect
    - Steve Harris’ SWH plugins
    - LADSPA plugin (ladspa.1428)
  * - zmq
    - Video Effect
    - misc
    -
  * - zoompan
    - Video Effect
    - Transform, Distort and Perspective
    - Apply Zoom and Pan effect (avfilter.zoompan)
  * - zscale
    - Video Effect
    - Misc
    - Apply resizing, colorspace and bit depth conversion (avfilter.zscale)

