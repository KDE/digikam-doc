.. metadata-placeholder

   :authors: - Annew (https://userbase.kde.org/User:Annew)
             - Yuri Chornoivan
             - Simon Eugster <simon.eu@gmail.com>
             - Loopduplicate (https://userbase.kde.org/User:Loopduplicate)
             - Bushuev (https://userbase.kde.org/User:Bushuev)
             - Jack (https://userbase.kde.org/User:Jack)

   :license: Creative Commons License SA 4.0

.. _using_p2_footage_from_panasonic_hvx200:


Using P2 footage from the Panasonic HVX200 on GNU/Linux (tested on Ubuntu)
==========================================================================



Using footage from P2 cards is easy when you know how! The MXF files on P2 cards cannot be read until you convert them with **mxfsplit**, a part of **FreeMXF**. The conversion is lossless and the resulting files contain both video and audio and can be edited in real time with **Kdenlive** (or **Blender 2.5+**) on most computers made within the last five years or so. Also, **FFMPEG** can read these files. This process is very fast because there is no transcoding and so can be done in the field while shooting just as fast as simply transferring the original P2 files.


Step One: FreeMXF
-----------------



Get the source code for **MFXlib** from `here <http://sourceforge.net/projects/mxflib/>`_.


Then configure, compile, and install it by running the following code in the directory where you saved the source files:


.. code-block:: bash

  
  ./configure
  make
  sudo make install


This will get **mxfsplit** (part of **mxflib**) working.


Step Two: Using mxfsplit
------------------------



Here is a simple script that can be run in the terminal. It will convert all MXF files in a chosen directory into usable files. Do a search and replace for /source/directory and /destination/directory


.. code-block:: bash

  
  # /source/directory
  # /destination/directory
  #
  # change to destination directory
  cd /destination/directory
  #find all *.MXF files in a specific directory and loop through them using the variable 'i'
  for i in /source/directory/*.MXF
  do
  # use mxfsplit to convert files
  STREAM=`mxfsplit -m $i | grep “File=” | cut -c 31-52`
  # rename the files so they make sense, appending the word 'converted' to the end of the basename
  mv *.Stream "`basename $i .MXF`converted.MXF"
  #end loop
  done
  


Conclusion
----------



Now you have a script that can easily prepare footage for editing (e.g. with **Kdenlive** or **Blender**) and for transcoding. **FFMPEG** can be used to transcode the resulting .MXF files to whatever format is preferred. For example, the following code would get the files ready for **Youtube**, **Vimeo**, etc.:


.. code-block:: bash

  cd ""
  for i in *.*
  do
  ffmpeg -threads 2 -i $i -acodec libmp3lame -aq 192 -vcodec libx264 -vpre slow converted$i.mp4
  done