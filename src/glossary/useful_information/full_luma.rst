.. metadata-placeholder

   :authors: - Annew (https://userbase.kde.org/User:Annew)
             - Claus Christensen
             - Yuri Chornoivan
             - Ttguy (https://userbase.kde.org/User:Ttguy)
             - Bushuev (https://userbase.kde.org/User:Bushuev)

   :license: Creative Commons License SA 4.0

.. _full_luma:

Full Luma
=========

.. contents::

Advance Clip Property - Full Luma Range
---------------------------------------

A clip can have its full luma flag set from the :ref:`clips` 


From `this <http://www.kdenlive.org/forum/what-does-full-luma-exactly-do#comment-18298>`_ forum post by Yellow


  The full luma option refers to video sources with luma recorded outside of the typical 'broadcast', 'restricted' 16 - 235 8bit range.


  This option fixes problems round tripping video files with luma outside of the 16 - 235 8bit range. By default when we import a video it is handled and displayed based on the 16 - 235 range, levels below ie: 0 to 15 and those above 235 to 255 are compressed to 0 and 255, so shadows get overly dark and highlights saturated, in the preview within **Kdenlive** for camera sources that are full range.


  Then when we render out, those levels remain in the final video, compressed shadows and saturated highlights, so there is a mismatch between the levels in the video we import compared to that exported. **This only really matters for round tripping to an external application**.


  For any playback on DVD's, Blu-ray and including the web like Vimeo or Youtube our video levels in the final rendered output should be in the 16 - 235 range, otherwise we see so called 'gamma shifts', 'washed out' or saturated playback depending on playback handling.


  However really we want to have control of the levels adjustment in **Kdenlive** i.e.: 0 - 255 into 16 - 235 so full luma option changes the handling of the files and preview / scopes are based on an alternative YCbCr to RGB calculation.


  By setting the full luma on, which should only be done for camera sources known to be full range 0 - 255 or even 16 - 255 such as FS100, Nex5, HV20, HV30 and probably many more consumer cameras. Canon and Nikon DSLR's too but a little more complicated, we can export video with the levels as imported, BUT and it's a big but, that is without doing any RGB operations in **Kdenlive**, so no effects, color correction etc. If any effects are added then the output will be restricted range again.


  For me I use full luma all the time, it allows roundtripping a video edit and maintaining levels for grading in an external application that offers 32bit float precision. When it's necessary to otherwise happy with **Kdenlive's** SOP/SAT and scopes.


