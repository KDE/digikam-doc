.. metadata-placeholder

   :authors: - Simon Eugster <simon.eu@gmail.com>
             - Eugen Mohr

   :license: Creative Commons License SA 4.0

.. Following text is a copy of: https://web.archive.org/web/20160322060304/https://kdenlive.org/users/granjow/introducing-color-scopes-vectorscope

.. _vectorscope_working:

The Vectorscope
===============

*Submitted by Granjow on Sun, 10/10/2010 - 18:30*

The last scope (after the :ref:`Histogram <histogram_working>` and the :ref:`Waveform and RGB Parade <waveform_and_RGB_parade>`) that is new to kdenlive 0.7.8 is the **Vectorscope**. This is actually the most interesting scope because it is quite different from the other ones and, secondly, is really useful for Color Grading.

.. image:: /images/kdenlive-colorscopes-vectorscope.png
   :alt: kdenlive-colorscopes-vectorscope

How the Vectorscope works
-------------------------

There is one simple thing that makes the Vectorscope so special: It uses a color space different than RGB. That sounds unspectacular, but it is not. The previous scopes allow you to determine which brightness values exist in your image, the Vectorscope shows which colors there are.

The Vectorscope supports two different color spaces: *YUV* and *YPbPr*. Both of them have the *Y* in common, something you know from before: It is the *Luma component* (Rec.601 in both cases). This, amongst others, comes from black/white TV. When Color TV was introduced, some people actually recognized that not everybody would immediately trash his old b/w TV and buy a new one, so they still sent the b/w signal, but with two additional channels: The blue difference and the red difference (to Luma), called U and V. So that is how `YUV <https://en.wikipedia.org/wiki/YUV>`_ works (please take a look at the image in its YUV components on the linked Wikipedia page).

The other color space, `YPbPr <https://en.wikipedia.org/wiki/YPbPr>`_ or its digital counterpart `YCbCr <https://en.wikipedia.org/wiki/YCbCr>`_ respectively, are similar. If you switch between the two color models in the Vectorscope (via the context menu) you will notice that the colors are slightly shifted. YCbCr is used basically everywhere in digital video.

So, what the Vectorscope does: It calculates the Luma value of a pixel, then calculates the blue difference/red difference values. Then it throws the Luma value away. Why that? It is because the Vectorscope is 2-dimensional. The blue difference is on the horizontal axis, the red difference is on the vertical axis. (There actually are three-dimensional vectorscopes which put the Luma component on the third axis!)

Vectorscope example: Grayscale video
------------------------------------

Now let's take a look at how this actually looks like in a video.

.. image:: /images/kdenlive-colorscopes-vectorscope-bw.png
   :alt: kdenlive-colorscopes-vectorscope-bw

Well … nothing? Close. There is a little pixel in the middle of the scope. And that is the whole image. That looks a little disappointing now, but actually it is great. All greys (plus black and white) are exactly in the middle. Everything that is not in the middle has some color information (and the further away it is from the middle, the higher its saturation aka. chrominance). This will come in very handy when it comes to white balance.

Vectorscope example: Juggling balls
-----------------------------------

.. image:: /images/kdenlive-colorscopes-vectorscope-juggling-balls.png
   :alt: kdenlive-colorscopes-vectorscope-juggling-balls

Juggling balls are more interesting, especially when they are colored. The ones above are. I’ve switched on a YUV background (with fixed Luma) which helps identifying the colors of pixel heaps on the scope. Two things can be noticed:

- here are six areas with high black density on the scope (which means that many pixels share this hue):
        
    1. One that points towards blue (bottom right),
    
    2. A big one around yellow,
    
    3. Two big ones around red,
    
    4. A smaller one between red and yellow,
    
    5. And the last one which you might have missed (I nearly did so as well), between red and blue.

    These are exactly the ball's colors! Blue comes from the two balls on the left, yellow from the yellow ball, the left red area is the pink part of the left ball, the right part in red is the red ball on the right. The part between red and yellow, which is actually orange, is the background of the whole scene, and the last one between red and blue is the violet part of the right red ball.
    
- The orange background seems to connect all other areas. This is something really amazing. Like magic. It will help doing white balance. The neutral area will almost always seem to connect the other ones.

As the shot above is actually correctly white balanced, I will not maltreat it here. But you should actually try! Download the sample below, add a SOP/Sat effect and change the Offset parameters for the RGB values. (Don’t forget to enable auto-refresh.)

Now perhaps you wonder how I could assign those spots to colors with surety. Is it really the upper spot caused by the red ball? To find out (I didn’t want to write wrong things here) I have masked the red ball out (with a Title Clip I’ve drawn a white rectangle on). The spot then indeed disappeared.

.. image:: /images/kdenlive-colorscopes-vectorscope-juggling-balls-masked.png
   :alt: kdenlive-colorscopes-vectorscope-juggling-balls-masked

The violet spot has disappeared as well, and also big parts of the yellow spot because the white rectangle covers the yellow ball as well.

Vectorscope example: Musical box
--------------------------------

.. image:: /images/kdenlive-colorscopes-vectorscope-musical-box.png
   :alt: kdenlive-colorscopes-vectorscope-musical-box

Again, two things worth pointing out for this clip.

- This shot of a Swiss Musical Box mainly consists of orange tones, all points on the vectorscope lie between neutral (center) and orange. Not too saturated orange tones as they come from the bronze/messing parts. (I guess that is what they are.)

- The white balance seems to be correct. The Vectorscope indicates that there are neutral pixels (i.e. greys), and they seem to be the origin for the other colors.

But when increasing the gain of the Vectorscope to 5× we see that the scope image actually stops right before neutral.

.. image:: /images/kdenlive-colorscopes-vectorscope-musical-box-whitebalance1.png
   :alt: kdenlive-colorscopes-vectorscope-musical-box-whitebalance1

If you open this clip and take a look at the Waveform you will notice that it shows the same: Blue is too low, red is too high. To correct this minor color cast we can use the SOP/Sat effect again, adjusting the Offset values. By doing that the points on the Vectorscoped will be shifted around. A positive red offset will make the points shift towards red at the top, a negative offset shifts them towards the opposite direction (that is, towards the `complementary color <https://web.archive.org/web/20160318213205/http://www.tigercolor.com/color-lab/color-theory/color-theory-intro.htm#complementary>`_ of red, cyan).

.. image:: /images/kdenlive-colorscopes-vectorscope-musical-box-whitebalance2.png
   :alt: kdenlive-colorscopes-vectorscope-musical-box-whitebalance2

I adjusted the blue and red values such that there is some padding around the neutral center. It is usually not enough to just let the first pixel hit the neutral point because several factors like the material of the neutral object itself, chromatic abberation (there is also a more accurate `article about chromatic aberration <https://web.archive.org/web/20160318204109/http://toothwalker.org/optics/chromatic.html>`_) in lenses, artifacts in the recorded video file. So usually neutral areas will not share one single pixel in the vectorscope but have a certain diameter. Therefore the padding.

Because this is a suitable clip for hue:

.. image:: /images/kdenlive-colorscopes-vectorscope-musical-box-hue.png
   :alt: kdenlive-colorscopes-vectorscope-musical-box-hue

Now what happened here? The hue has changed, and the points on the scope look like rotated by 30 degrees. And indeed they did rotate. The Hueshift effect changes the hue of all colors by a certain (configurable ;)) amount. In the Vectorscope this becomes visible as a rotation around the center of the scope.

Similarly, when changing the saturation/chroma, the dots on the vectorscope will move closer to the center or further away from it.

Creating a look for your video
------------------------------

In the Histogram article's introduction I mentioned creating looks with color correction. This example covers part of the tip of the iceberg of this topic. (The tip is the most important part of an iceberg because it tells you where you can drive safely ;))

What is special about creating a look for a video? Let's take a look at some random clips:

.. image:: /images/colorcorrection-uncorrected.jpg
   :alt: colorcorrection-uncorrected

Mostly different content and therefore different colors – as said: random. One point of Color Grading is to give single clips a connection. This is not limited to white balance only. White balancing a clip is about removing color casts (which is a good thing because it gives you a neutral starting point). But we can also add new colors.

.. image:: /images/colorcorrection-corrected.jpg
   :alt: colorcorrection-corrected

These clips look much more like if they belonged together. This is the result of Primary Color Correction (Primary means that it affects the whole image; Secondary Color Correction would only affect parts of it, e.g. by using masks, choosing color ranges, etc.): White balance (plus in some cases reduction of saturation) followed by a SOP/Sat effect. The latter SOP/Sat effect does something similar as the Blockbuster Effect; here the blacks become blueish, the mids and the whites tend towards yellow.

See also `this page <http://www.kenstone.net/fcp_homepage/fcp_7_scopes_vectorscope_stone.html>`_ for some hints about Looks and the Vectorscope.

Vectorscope options
-------------------

In kdenlive 0.7.8 you can adjust the Vectorscope as follows by right-clicking it:

- *Export Background* – Exports a color plane of the desired color space. This is a goodie for interested people like me ;) It allows to export RGB, YUV and YCbCr planes (like the ones you see when visiting the Wikipedia articles about this color spaces).

- *75 % Box* – Marks the position where color saturation reaches 75 % of its maximum value. This may be interesting if you work for broadcast. Colors exceeding this box were not regarded as `broadcast safe <https://en.wikipedia.org/wiki/Vectorscope#Video>`_ – but before changing the saturation to a max of 75 % better consult your broadcast company ;)

- *Draw axis* – Draws the U/Pb (horizontal) and V/Cr (vertical) axis.

- *YUV* and *YPbPr* – Switches between the two color spaces YUV and YPbPr.

Clip Sources
------------

- `raclette-greyscale.avi <http://granjow.net/uploads/kdenlive/samples/raclette-greyscale.avi>`_ (720/24p, 12 MB)

- `juggling-balls.avi <http://granjow.net/uploads/kdenlive/samples/juggling-balls.avi>`_ (720/24p, 11 MB)

- `Musical-box.avi <http://granjow.net/uploads/kdenlive/samples/Musical-box.avi>`_ (720/24p, 23 MB. Video from Nikon D90, Audio from Zoom H4n.)

Summary
-------

The Vectorscope shows the hue and saturation distribution in a way we can understand without problems. This is useful for quickly recognizing color casts, but also helps judging the color distribution of a clip and match it to others.

All scopes together fulfill another important task: They help matching video from different light situations and different input sources (like a second camera) regarding brightness and color. This is what you need Test Charts as e.g. seen `here <https://web.archive.org/web/20141006190923/http://www.image-engineering.de/index.php?option=com_content&view=article&id=370:the-universal-test-target-utt-a-new-approach&catid=1:latest-news&Itemid=97>`_ for. Different cameras might have a different dynamic range and different colors. So when combining these shots you first shoot a test chart and then `match exposure and color <https://web.archive.org/web/20141010162133/http://www.hdcinematics.com/chapters/chapter2.html>`_. This is also widely covered in the book `Color Correction for Video <https://www.amazon.de/s?k=0240810783%2C+9780240810782&link_code=qs&sourceid=Mozilla-search&tag=firefox-de-21>`_ by Steve Hullfish and Jamie Fowler.

.. image:: /images/switzerland.png
   :alt: switzerland
   :align: right

So — have fun with the scopes! May they guide you through your color grading.

Thanks for reading!

Please drop your comments below.

Simon A. Eugster (Granjow)

.. Following text is a copy of: https://web.archive.org/web/20160324111308/http://kdenlive.org/users/granjow/vectorscope-what-i-and-q-lines-are-good

.. _vectorscope_i-q_lines:

What the I and the Q lines are good for
---------------------------------------

*Submitted by Granjow on Fri, 11/26/2010 - 18:05*

In the next kdenlive version (or in the current SVN version, if you dare compile it yourself :)) you will find a new option for the vectorscope: To draw I/Q lines. What are they good for?

.. image:: /images/vectorscope-iq-lines.png
   :alt: vectorscope-iq-lines

Where I/Q lines come from
-------------------------

You may remember from my blog post about the Vectorscope (see above) that the Vectorscope uses a color space different than RGB. In the image above it is `YUV <https://en.wikipedia.org/wiki/YUV>`_, in the image below it is `YPbPr <https://en.wikipedia.org/wiki/YPbPr>`_. They both share the property that the Y component represents Luma only (i.e. how bright a pixel is), and the other two components represent Chroma (colour) by expressing deviations from neutral color on the red-green and yellow-blue axis. (These are complementary colours each, so mixing them in equal parts results in neutral again – which is why they can be used for the deviation.)

YUV is the standard color space for analog PAL television. NTSC, the american analog TV standard, uses a color space I did not mention yet: `YIQ <https://en.wikipedia.org/wiki/YIQ>`_. The special thing about this color space is that the I component was chosen such that skin tones (also known as flesh tones) lie on the I line (orange-blue), and it was given more than four times as much bandwidth as the Q component (which represents the green-purple line; the human eye is also less sensitive for changes on this line).

.. image:: /images/vectorscope-iq-lines-skin.png
   :alt: vectorscope-iq-lines-skin.png

The Purpose of the I and the Q line
-----------------------------------

You might have guessed it already: The reason for displaying the Q and, especially, the I line is to help with skin tones. There is a rule of thumb in post production saying that all skin tones should approximately lie on the I line. If it is not, you might want to `color-correct your clip <https://prolost.com/blog/2008/3/23/save-our-skins.html>`_.

Why? If skin tones do not lie on the I line, they are likely to look unnatural. Our eye is trained on skin tones ;) End of the story.

Clip sources
------------

Only one this time.

- skin1.avi (720p, 5.1 MB)

That's it! Thanks for reading.

Feel free to post your comments below.

Simon A. Eugster (Granjow)

.. image:: /images/switzerland.png
   :alt: switzerland
