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

The batch Queue Manager allows to customize a **Workflow** with a specific plugin dedicated to run a script an process your images with an external tool as `ImageMagick <https://imagemagick.org/>`_ for example.

The Tool is named **Custom Script**, available in **Base Tools** list, and **Custom Tools** category. The goal is pass to a script source code written by the user in the plugin, a series of environment variables to handle in the code and to re-route for a custom usage with delegate command line programs installed on your computer.

.. figure:: images/bqm_custom_script.webp
    :alt:
    :align: center

    The Batch Queue Manager Including a Custom Script in a Workflow

The tool provides these options:

    - **Output Image Type**: this value allows to setup the expected type of image format to use at the output of your script. The default is **Same as input**, but you can set **JPEG**, **PNG**, or **TIFF**. Take a care that JPEG is a lossy compression format, only support 8-bit color depth, and does not supports transparency.

    - **Shell Script**: this text edit field allow to enter the source code of your shell script. Under **Linux** and **macOS**, `Bash script <https://en.wikipedia.org/wiki/Bash_(Unix_shell)>`_ is supported. Under **Windows** `Batch script <https://en.wikipedia.org/wiki/Batch_file>`_ is supported.

The keywords that you can use in your script code are listed below. The tool will replace all occurrences of keywords in script at run time before shell execution. Take a care that keywords are case sensitive.

    - **$INPUT** for workflow input filename (with special characters escaped).

    - **$OUTPUT** for workflow output filename (with special characters escaped).

The environment variables that you can use in your script code are listed below:

    - **TITLE**: to handle digiKam **Title** item properties from database.

    - **COMMENTS**: to handle digiKam **Caption** item properties from database.

    - **COLORLABEL**: to handle digiKam **Color Label** item properties from database.

    - **PICKLABEL**: to handle digiKam **Pick Label** item properties from database.

    - **RATING**: to handle digiKam **Rating** item properties from database.

    - **TAGSPATH**: to handle digiKam **Tags** item properties from database.

.. note::

    Under Linux and macOS, environment variables can be accessed in script with **$** as prefix of variable names (for example **$INPUT**).

    Under Windows, environment variables can be accessed in script with **%** as prefix and suffix of variable names (for example **%INPUT%**).

Examples
--------

The first example that you can see below, ...does nothing special. It will print the input and output file names passed from batch queue manager to the script and copy input file to ouput file. The script expect to use the same output filename name than input one.

.. code-block:: bash

    echo "INPUT FILE: $INPUT"
    echo "OUTPUT FILE: $OUTPUT"
    cp "$INPUT" "$OUTPUT"
    exit $?
