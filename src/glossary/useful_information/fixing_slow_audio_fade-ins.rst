.. metadata-placeholder

   :authors: - TheDiveO
             - Eugen Mohr
             
   :license: Creative Commons License SA 4.0

.. moved from https://kdenlive.org/en/project/fixing-unwanted-slow-audio-fade-ins-with-some-usb-audio-cards/   

.. _fixing_unwanted__slow_audio_fade-ins_with_some_USB_audio_cards:

Fixing Unwanted Slow Audio Fade-Ins with Some USB Audio Cards
=============================================================

Do you suffer from an unwanted slow audio fade-ins whenever starting playback in the timeline or in the clip monitor, while you don’t have any audio fade effects applied at all? Turns out this is some odd interference between some(!) USB audio cards and the PulseAudio sound backend…

ALSA to the Res-Cue
-------------------

.. container:: clear-both

   .. image:: /images/kdenlive-audio-settings.jpeg
      :align: left
      :alt: kdenlive-audio-settings
      :width: 350px

   Luckily, there’s an easy remedy in case you’re affected.

   Go to the menu :menuselection:`Settings > Configure Kdenlive`, then in the configuration dialog select the :guilabel:`Playback` section. Change the :guilabel:`Audio driver` from :guilabel:`Automatic` to :guilabel:`ALSA`. Leave the Audio device set to “Default”, so your desktop audio device settings apply.

   Click :guilabel:`OK`, and you’re done.

   Your timeline and bin clip audio playback should now be working as expected, without any unwanted slow audio fade-ins anymore.


You’ll find the corresponding option in the main menu :menuselection:`Timeline --> Disable Timeline Effects`. This disables or re-enables all timeline effects, that is, timeline clip effects and track effects.

However, please note that prior to Kdenlive 16.08.1, track effects are not properly disabled or re-enabled by :menuselection:`Timeline --> Disable Timeline Effects`.

Please see :ref:`effects_everywhere` about how to temporarily disable bin clip effects.

.. rst-class:: clear-both

Background Information
----------------------

Please note that the unwanted ~2 seconds audio fade-in only happens with some USB audio cards, but not others. I’ve noticed when trying a Steinberg UR22mkII USB audio interface.

Using the UR22mkII in Kdenlive using the stock audio settings was impossible, as the automatic fade-in made any voice over editing a complete and utter fail. Curiously, the UR22mkII worked beautifully when I played back audio using an Android tablet (that’s a beautiful aspect of the UR22mkII: it’s designed to be used with mobile devices). For comparism, my (much more bulky) Behringer QX1202USB doesn’t exhibit the strange behavior even with the default audio settings in Kdenlive, or when using PulseAudio.

And what is even more strange and surprising: at least some other software, such as VLC, are unaffected either, even when using PulseAudio for audio output.

Unfortunately, no-one was able to give me the solution; but luckily, in the end I found it myself after some trial and error. Hopefully my solution is of help to those Kdenlive users experiencing the same strange audio fade-in behavior.
