.. meta::
   :description: digiKam Maintenance Tool to Sort Image by Quality
   :keywords: digiKam, documentation, user manual, photo management, open source, free, learn, easy, quality, pick-label, deep-learning

.. metadata-placeholder

   :authors: - digiKam Team

   :license: see Credits and License page for details (https://docs.digikam.org/en/credits_license.html)

.. _maintenance_autotags:

:ref:`Auto-Tags Assignment <maintenance_tools>`
===============================================

.. figure:: images/maintenance_autotags.webp
    :alt:
    :align: center

    The digiKam Maintenance Options for Auto-Tag Assignment

The **Auto-Tags Assignment** scans the images in your collection, applying a neural network that has been trained to identify common objects to each and every image. The objects identified by the neural network are then used to tag each image. So in theory, when the scan is complete, you can search your database for images containing a bird, or a ball, or a car.

There are three options for this tool:

    - **Auto-tagging mode** can be set to **Clean all and re-assign** or **Scan non-assigned only**. The latter option limits the processing to images that have not been previously scanned, and hence is faster.
    - **Selection model** can be set to one of three trained models: YOLOv5 Nano, YOLO5XLarge, or ResNet50. The YOLOv5 Nano is the fastest but least accurate model, and YOLO5XLarge is slowest but most accurate model. ResNet50 is likely to fall between these two extremes.
    - **Translate Tags to** this option allows you to automatically translate any tags into one or more other languages.

While the auto-tag assignment process is underway, a progress indicator is displayed in the bottom right corner of the main window.
