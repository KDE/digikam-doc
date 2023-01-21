.. meta::
   :description: digiKam Custom Script from Batch Queue Manager
   :keywords: digiKam, documentation, user manual, photo management, open source, free, learn, easy, batch, custom, script

.. metadata-placeholder

   :authors: - digiKam Team

   :license: see Credits and License page for details (https://docs.digikam.org/en/credits_license.html)

.. _custom_script:

Custom Script
=============

.. contents::

Overview
--------

The batch Queue Manager allows to customize a **Workflow** with a specific plugin dedicated to run a script and process your images with external tools as `ImageMagick <https://imagemagick.org/>`_ or `ExifTool <https://en.wikipedia.org/wiki/ExifTool>`_ for example.

The Tool is named **Custom Script**, available in **Base Tools** list, and **Custom Tools** category. The goal is to pass to a script source code written by the user in the plugin, a series of environment variables handled in the code and re-routed for a custom usage with delegate command line programs installed on your computer.

.. figure:: images/bqm_custom_script.webp
    :alt:
    :align: center

    The Batch Queue Manager Including a Custom Script in a Workflow

The tool provides these options:

    - **Output Image Type**: this value allows to setup the expected type of image format to use at the output of your script. The default is **Same as input**, but you can set **JPEG**, **PNG**, or **TIFF**. Take a care that JPEG is a lossy compression format, only support 8-bit color depth, and does not supports transparency.

    - **Shell Script**: this text edit field allows to enter the source code of your shell script. Under **Linux** and **macOS**, `Bash script <https://en.wikipedia.org/wiki/Bash_(Unix_shell)>`_ is supported. Under **Windows** `Batch script <https://en.wikipedia.org/wiki/Batch_file>`_ is supported.

The keywords that you can use in your script code are listed below. The tool will replace all occurrences of keywords in script at run time before shell execution. Take a care that keywords are case sensitive.

    - **$INPUT** for workflow input filename (with special characters escaped).

    - **$OUTPUT** for workflow output filename (with special characters escaped).

.. importabt::

    A new file is always expected on **$OUTPUT**. With a script programs that do not create a new file (e.g. changing metadata with Exiftool) you must first copy **$INPUT** to **$OUTPUT** with a command appropriate to the operating system and then make the changes to **$OUTPUT**.

The environment variables that you can use in your script code are listed below:

    - **TITLE**: to handle digiKam **Title** item properties from database.

    - **COMMENTS**: to handle digiKam **Caption** item properties from database.

    - **COLORLABEL**: to handle digiKam **Color Label** item properties from database.

    - **PICKLABEL**: to handle digiKam **Pick Label** item properties from database.

    - **RATING**: to handle digiKam **Rating** item properties from database.

    - **TAGSPATH**: to handle digiKam **Tags** item properties from database.

.. note::

    Under Linux and macOS, environment variables can be accessed in script with **$** as prefix of variable names (for example **$INPUT**). The interpreter used to run the script is **/bin/bash**.

    Under Windows, environment variables can be accessed in script with **%** as prefix and suffix of variable names (for example **%INPUT%**). The interpreter used to run the script is **cmd.exe**. The script should not contain any blank lines or comment lines.


Return Value
------------

By convention, a **Bash script** under Linux and macOS, 0 is returned on success or an integer in the range 1-255 for something else. Use **exit < error_code >** to pass the return value on the workflow.

Under Windows, a **Batch script** returns 0 on success and another value for something else, but the value is a signed integer, so a negative value is possible. Use **EXIT /B < error_code >** to pass the return value on the workflow.

The Batch Queue Manager handles the value returned by your script. If zero is returned, the workflow continue as expected, else the workflow is broken and Batch Queue Manager stop the process.

Examples
--------

Proof of Concept 
~~~~~~~~~~~~~~~~

This First example that you can see below, ...do nothing special. It will print on the console the input/output file names and item properties passed from batch queue manager to the script and copy input file to output file (this stage is required else Batch Queue Manager returns an error as the target file does not exist). The script returns the value from the file copy command, this one is parsed by the Batch Queue Manager to check the workflow stream.

.. code-block:: bash

    echo "INPUT FILE: $INPUT"
    echo "OUTPUT FILE: $OUTPUT"

    echo "TITLE: $TITLE"
    echo "COMMENT: $COMMENT"
    echo "COLORLABEL: $COLORLABEL"
    echo "PICKLABEL: $PICKLABEL"
    echo "RATING: $RATING"
    echo "TAGSPATH: $TAGSPATH"

    cp "$INPUT" "$OUTPUT"
    exit $?

If you have started digiKam from a terminal and enabled the debug traces on :ref:`Setup/Miscs/System dialog page <system_settings>`, you will see something like this:

.. code-block:: text

    digikam.general: Action Thread run  1  new jobs
    digikam.general: Tool : index=  1  :: name=  "UserScript"  :: group=  Digikam::BatchTool::CustomTool  :: wurl=  QUrl("file:///mnt/data/Images/SALAGOU")
    digikam.general: path:  "/mnt/data/Images/SALAGOU/BatchTool-EpEjEz-9e1c7a12.digikamtempfile.JPG"
    digikam.general: Tool:        "User Shell Script"
    digikam.general: Input url:   QUrl("file:///mnt/data/Images/SALAGOU/DSC08833.JPG")
    digikam.general: Output url:  QUrl("file:///mnt/data/Images/SALAGOU/BatchTool-EpEjEz-9e1c7a12.digikamtempfile.JPG")
    digikam.dplugin.bqm: Script stdout "INPUT FILE: /mnt/data/Images/SALAGOU/DSC08833.JPG\nOUTPUT FILE: /mnt/data/Images/SALAGOU/BatchTool-EpEjEz-9e1c7a12.digikamtempfile.JPG\nTITLE: Salagou Trip\nCOMMENT: \nCOLORLABEL: 5\nPICKLABEL: 3\nRATING: 3\nTAGSPATH: Places;Places/France;Places/France/Salagou Lake\n"
    digikam.dplugin.bqm: Script stderr ""
    digikam.dplugin.bqm: Script exit code: 0

The digiKam information taken from the database are:

    - Item processed is **/mnt/data/Images/SALAGOU/DSC08833.JPG**.
    - Target filename is **/mnt/data/Images/SALAGOU/BatchTool-EpEjEz-9e1c7a12.digikamtempfile.JPG** (a temporary file generated by Batch Queue Manager).
    - Item Title is **Salagou Trip**.
    - Item Comment is null.
    - Item Color Label is **5** (Green).
    - Item Pick Label is **3** (Accepted).
    - Item Rating is **3 stars**.
    - Item Tags are **Places**, **Places/France**, **Places/France/Salagou Lake**.

Add a Watermark with ImageMagick
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The second example below is more complex and uses **ImageMagick** command like tool to add a multiline text superimposed over pictures to create a visible watermark on the center of images.

.. code-block:: bash

    watermark="This image is\ncopyrighted and\navailable with\nlimited usage"

    in_file="$INPUT"
    out_file="$OUTPUT"

    convert -size 2000x1000 xc:none -gravity center \
        -stroke yellow -pointsize 120 -font Courier-BoldOblique -strokewidth 3 -annotate +100+100 "${watermark}" \
        -blur 0x25 -level 0%,50% \
        -fill white -stroke none -annotate +100+100 "${watermark}" \
        "${in_file}"  +swap -gravity center -geometry +0-3 \
        -composite  "${out_file}"

.. note::

    In this example, there is no explicit **exit** call to return a value to the Workflow. Bash uses the last called method as the returned value from the script, here the ImageMagick command line tool **convert**.

This give a result like below.

.. figure:: images/bqm_imagemagick_watermark.webp
    :alt:
    :align: center

    The result of the Script Using ImageMagick to Apply a Watermark
