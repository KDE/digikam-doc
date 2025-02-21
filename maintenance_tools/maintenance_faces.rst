.. meta::
   :description: digiKam Maintenance Tool Detect and Recognize Faces
   :keywords: digiKam, documentation, user manual, photo management, open source, free, learn, easy, maintenance, faces, detection, recognition, deep-learning

.. metadata-placeholder

   :authors: - digiKam Team

   :license: see Credits and License page for details (https://docs.digikam.org/en/credits_license.html)

.. _maintenance_faces:

:ref:`Detect and Recognize Faces <maintenance_tools>`
=====================================================

.. figure:: images/maintenance_faces_management.webp
    :alt:
    :align: center

    The digiKam Maintenance Options to Detect and Recognize Faces

This process is also accessible in the **People** view via the **Scan collection for faces** button. However, here you can only set the **scan type**. For more information about the **Faces Data Management** options see the :ref:`People View  <people_view>` section of this manual.

.. figure:: images/maintenance_faces_scan.webp
    :alt:
    :align: center
    :width: 300px

    The Scan Collection for Faces Button from People Left Sidebar

While the face management process is underway, a progress indicator is displayed in the bottom right corner of the main window.

.. figure:: images/maintenance_faces_process.webp
    :alt:
    :align: center

    The digiKam Faces Management Process Running in the Background

.. important::

   For face management to work correctly, digiKam needs access to the deep-learning models that can be downloaded from the web during its first run. See the :ref:`Quick Start <quick_start>` section of this manual for details.

The **Detect and recognize faces** section of the **Maintenance Tool** has two additional options for managing your face database.

- **Rebuild all training data**: Use this to clear all training data from the face recognition database and rebuild it using the face tag thumbnails.  This is useful if you have changed the face tag regions on several images, or if the recognition process isn't returning as many results as you expect.

- **Reset and clear all faces and training**: CAUTION! This will delete all training from the face recognition database and do a full detection scan on all images.  When it is complete, all confirmed faces will be moved to **Unknown** and you will have to begin training your face database all over again. If this process is interrupted, you can salvage face training that hasn't been deleted by running **Rebuild all training data** above.
