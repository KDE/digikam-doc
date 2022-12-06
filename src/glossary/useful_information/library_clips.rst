.. metadata-placeholder

   :authors: - TheDiveO
             - Eugen Mohr
             
   :license: Creative Commons License SA 4.0

.. moved from https://kdenlive.org/en/project/library-clips-with-image-sequences-titles-color-clips/

.. _library_clips:

Library clips with image sequences, Titles, Color clips
=======================================================

.. versionadded:: 16.12.0

Kdenlive 16.12.0 will see **further improvements to its library clip expansion** (and, in consequence, to MLT playlist import). Not every Kdenlive user will notice the improved functionality, as it affects only library clips where the same image sequence or title is used multiple times.

In particular, if you (re) use the same image sequence clip, title clip, or even color clip multiple times **in the same library clip**, such image sequences and titles  **will only be added once to your project bin**. Before Kdenlive 16.12.0, multiple instances of the same clip in the timeline unfortunately resulted in these clips getting added multiple times to the project bin. To emphasize, this undesired behavior only affected image sequences, titles, and color clips.

When expanding a library Kdenlive 16.12.0 will now check image sequences, titles, and color clips in the timeline for their content, clip name, and original bin folder location. If there is a match, then such a timeline clip will be added only once to your project bin.

.. note::

   A “library clip” is a clip with the “.mlt” suffix, and in particular, a clip that has been added to your personal Kdenlive library. They show up in Kdenlive’s library pane.

   Internally, when you select some clips & transitions from the timeline and add them to Kdenlive’s library, these clips and transitions are stored in the file system in a “.mlt” file (which is an MLT playlist to be precise), and shown in the library widget as a new library clip.

   Technically, Kdenlive projects are also MLT playlist files. When you add a clip from the library pane to your project this simply adds the underlying MLT playlist file to your project. But in contrast to other clips, such as an MP4 video, you can “expand” library (that is, MLT playlist) clips to get back the individual clips and transitions inside it.