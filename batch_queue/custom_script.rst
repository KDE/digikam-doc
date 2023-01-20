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

The batch Queue Manager allow to customize a **Workflow** with a specific plugin dedicated to run a script an process your images with an external tool as `ImageMagick <https://imagemagick.org/>`_ for example.

The Tool is named **Custom Script**, available in **Base Tools** list, and **Custom Tools** category. The goal is pass to a script source code written by the user in the plugin, a serie of environment variables to handle in the code and to re-route for a custom usage with delegate command line programs installed on your computer.

.. figure:: images/bqm_custom_script.webp
    :alt:
    :align: center

    The Batch Queue Manager Including a Custom Script in a Workflow

The tool provides these options:

    - **Output Image Type**: this value allows to setup the expected type of image format to use at the output of your script. The default is **Same as input**, but you can set **JPEG**, **PNG**, or **TIFF**. Take a care that JPEG is a lossy compression format, only support 8-bit color depth, and do not supports transparency.

    - **Shell Script**: this text edit field allow to enter the source code of your shell script. Under **Linux** and **macOS**, `Bash script <https://en.wikipedia.org/wiki/Bash_(Unix_shell)>`_ is supported. Under **Windows** `Batch script <https://en.wikipedia.org/wiki/Batch_file>`_ is supported.

The environment variables that you can use in your script code are listed below:

    - **INPUT** and **$OUTPUT** for input / output filenames (with special characters escaped). These would be substituted before shell execution.

    - **TITLE**: to handle digiKam **Title** item properties from database.

    - **COMMENTS**: to handle digiKam **Caption** item properties from database.

    - **COLORLABEL**: to handle digiKam **Color Label** item properties from database.

    - **PICKLABEL**: to handle digiKam **Pick Label** item properties from database.

    - **RATING**: to handle digiKam **Rating** item properties from database.

    - **TAGSPATH**: to handle digiKam **Tags** item properties from database.

.. note::

    Under Linux and macOS, environment variables can be accessed in script with **$** as prefix of variable names (for example **$INPUT**).

    Under Windows, environment variables can be accessed in script with **%** as prefix and suffix of variable names (for example **%INPUT%**).

