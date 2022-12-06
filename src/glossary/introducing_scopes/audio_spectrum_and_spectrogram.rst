.. metadata-placeholder

   :authors: - Simon Eugster <simon.eu@gmail.com>
             - Eugen Mohr

   :license: Creative Commons License SA 4.0

.. Following text is a copy of: https://web.archive.org/web/20160321134459/http://kdenlive.org/users/granjow/introducing-scopes-audio-spectrum-and-spectrogram

.. _audio_spectrum_and_spectrogram:

The Audio Spectrum and the Spectrogram
======================================

*Submitted by Granjow on Sat, 12/25/2010 - 12:51*

In the next version of Kdenlive you will again find new scopes. This time not for video but for audio! I will also give some tips about audio in general (recording, perception, etc.), not only about kdenlive’s scopes.

.. image:: /images/audiospectrum-example.png
   :alt: audiospectrum-example

First of all, the scopes
------------------------

.. figure:: /images/kdenlive-spectrogram.png
   :alt: kdenlive-spectrogram

   Spectrogram screenshot

The audio scopes are documented in-depth in `Audio Scopes for kdenlive (PDF) <http://granjow.net/uploads/kdenlive/kdenlive-audioscopes.pdf>`_. You may skip the technical/mathematical part — it is not necessary for understanding the scope, and the maths behind is not very trivial. The rest might be interesting though.

Nevertheless, a quick overview over the features currently available.

Audio Spectrum
~~~~~~~~~~~~~~

This scope displays the frequency spectrum for each frame. Low frequencies are on the left, high frequencies on the right. And the higher the bar, the louder this frequency.

Loudness is measured in `decibel <https://en.wikipedia.org/wiki/Decibel>`_ in the spectrum. (To be very precise, the unit used in the scope is `dbFS <https://en.wikipedia.org/wiki/DBFS>`_, so 0 dB refers to the maximum possible loudness that can be achieved with the digital input signal.) If all frequencies have equal loudness, you can adjust the range to display by dragging vertically. Simply dragging adjusts the lower threshold, :kbd:`Shift + drag` adjusts the maximum loudness to display. Horizontal dragging adjusts the maximum frequency to display samples for.

But what is this display useful for? One thing is that, as described in the PDF linked at the top, you can visually distinguish between good and bad sound quality: If there are no frequencies higher than, like, 3 kHz, then the audio quality most likely is not too good.

(If you have no clue how high 3 kHz are, which is nothing unusual since our ears do not deliver numerical values to our brain, you can use a program like `SignalGen <https://arachnoid.com/SignalGen/index.html>`_ or `Audacity <https://www.audacityteam.org/>`_ to generate a sine wave with 3 kHz (which is 3000 Hz).)

Something else the frequency spectrum is useful for is to avoid `clipping <https://en.wikipedia.org/wiki/Clipping_(signal_processing)>`_. The same effect that can be seen with colors, e.g. in the :ref:`RGB parade <waveform_and_RGB_parade>`, and actually with every signal that is digitalized. More about this below.

Spectrogram
~~~~~~~~~~~

The `Spectrogram <https://en.wikipedia.org/wiki/Spectrogram>`_ does the same as the Audio Spectrum: It shows the frequency distribution. With the difference though that the frequencies are not shown for one frame only. Similar to the RGB Parade for colors are stronger (louder) frequencies represented by brighter pixels; this allows to put a whole frame’s spectrum in one line.

What the scopes might help in as well
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

To maintain equal loudness over multiple shots. Consider `this review <https://www.youtube.com/watch?app=desktop&v=ZWXU3mScCzM>`_ about the Nikon D7000, and listen at 7:00 and 11:00. At 7:00 you can hear the reviewer loud and clear, at 11:00 you need to turn up the volume to even understand something. This should not happen.

Sound
-----

Now a few interesting details about sound.

Clipping
~~~~~~~~

.. figure:: /images/Zoom_H4n_audio_levels.jpg
   :alt: Zoom H4n audio levels
   :width: 40%
   :align: right

   Audio levels on a Zoom H4n

As mentioned above sound can clip as well. Everyone has heard this already. This is how it sounds (Extracts from James Edwards’ Greensleeves, cc-nc-by-sa, link at the end of this article):

- `Original <http://granjow.net/uploads/kdenlive/samples/James-Edwards-Greensleeves-original.ogg>`_ (Just noticed that Firefox plays .ogg natively :) )

- `Volume increased by 24 dB: <http://granjow.net/uploads/kdenlive/samples/James-Edwards-Greensleeves-overdriven-24dB.ogg>`_ Massive clipping!

- `Volume afterwards decreased by 24 dB <http://granjow.net/uploads/kdenlive/samples/James-Edwards-Greensleeves-overdriven-24dB-reverted.ogg>`_ — the clipping effect is irreversible

Clipping is also very well visible in the audio wave itself, if you e.g. open the samples above with Audacity. (If you want to reproduce the above effect with Audacity, make sure to select «allow overdrive», otherwise it will `prevent clipping <https://en.wikipedia.org/wiki/Dynamic_range_compression>`_. When decreasing the volume afterwards do not use the same project since Audacity actually stores values that are bigger than the maximum amplitude value (.aup files only). This is great for editing, and perhaps one day we will have that for color as well in kdenlive …)

So when may clipping occur?

1. When recording audio. The input gain can be adjusted on the audio recorder. (Usually. For the Nikon D90 you cannot adjust anything for example. But its audio is not really usable anyway.) If the gain is too high, it might record for example low talking at a good volume, but clip as soon as someone rises his/her voice. Therefore input gain is usually adjusted such that the mean volume and peaks do not exceed a certain limit.
   This limit depends on the expected dynamic audio range. A common choice is −12 dB for the mean volume and maximally −6 dB for peaks.
   
2. When editing. There are multiple volume effects in kdenlive. If you raise the volume too much, you will experience clipping. (Try it.)
   To prevent clipping in kdenlive, you actually do quite the same as when recording audio. Try to keep peak values below −6 dB. If you need one cut to be really much louder than the rest and you cannot raise it any further, then you need to lower everything else.

Damping
~~~~~~~

The further away you are from the sound source, the quieter you hear it. Until finally it will be as loud as the noise floor of your microphone and audio recorder. To maintain a good SNR you will therefore usually try to keep your microphone as close as possible to the sound source. Such that the signal is much stronger than the noise (and with the input gain adjusted such that no clipping occurs).

But that is not everything yet. (Actually the above point was not about dampening at all but merely about wave propagation.) There is one interesting aspect, which is that higher frequencies are absorbed much stronger than low frequencies. Unlike the previous points this is not a problem but rather an interesting variable: If you record someone’s voice and want to put him far away in the video (next room for example), lower the higher frequencies (using Audacity’s Equalizer effect for example).

Our ear
~~~~~~~

What is louder, a sine wave of 200 Hz or a sine wave of 4 kHz?

- `200 Hz Sine <http://granjow.net/uploads/kdenlive/samples/Sine-200Hz.ogg>`_

- `4000 Hz Sine <http://granjow.net/uploads/kdenlive/samples/Sine-4000Hz.ogg>`_

They have both been generated with the same amplitude (volume). But our ear is most sensible on the frequencies we talk in. To read more about our ear, `Wikipedia <https://en.wikipedia.org/wiki/Hearing>`_ is a good starting point.

Links
-----

- `James Edwards <https://www.jamendo.com/artist/355390/james-edwards>`_ at Jamendo

- `Damping of frequencies in air (PDF) <https://web.archive.org/web/20140715193728/http://www.isi.ee.ethz.ch/teaching/courses/ak1/akustik-schallausbreitung-im-freien.pdf>`_, German

- `Capturing good sound <https://vimeo.com/blog/post/capturing-good-sound>`_ at Vimeo, about microphones.

- `Thread about audio and clipping <https://web.archive.org/web/20140715164749/http://www.dvxuser.com/V6/showthread.php?207009-Db-level-peaks-matter-in-this-situation&highlight=audio+clipping>`_ at dvxuser.com (I think it is a good idea to search for interesting forum threads there for yourself if you are interested)

Thanks …
--------

.. image:: /images/switzerland.png
   :alt: switzerland
   :align: right

… for reading! I hope you will have fun with the scopes in the next kdenlive version.


Simon A. Eugster (Granjow)