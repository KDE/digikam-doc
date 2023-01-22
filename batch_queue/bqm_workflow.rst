.. meta::
   :description: digiKam Batch Queue Manager Workflow
   :keywords: digiKam, documentation, user manual, photo management, open source, free, learn, easy, batch, queue, manager, tools, workflow

.. metadata-placeholder

   :authors: - digiKam Team

   :license: see Credits and License page for details (https://docs.digikam.org/en/credits_license.html)

.. _bqm_workflow:

Workflow
========

.. contents::

On the bottom right, the Batch Queue Manager has a tab named **Worflow** which is empty by default. This view is a list where user can store the prefered set of tools to assign to queues. This list is saved and restored between sessions and can be re-used as well.

A workflow store the order of tools to run over a queue, including all tools settings. This allows to reproduce easily a batch processing depending of use cases. A workflow has tree properties to be identified: a **Title** as text, a **Description** as text, and the amount of tools registered. All these information are stored in an XML file from your home directory.

.. figure:: images/bqm_workflow_view.webp
    :alt:
    :align: center

    The Batch Queue Manager Worflow View Store a List of Tools to Assign to a Queue

To create a new Workflow, select your tools from **Base Tools** tab and drag and drop items to **Assigned Tools** list to create your sequence. When all is done, right click with mouse over the list to show the pop-up menu and select the **Create Workflow** option. A dialog will appears to fill the workflow **Title** and **Description** properties. Press **OK** to append the new item on the **Workflow** tab.

.. figure:: images/bqm_workflow_create_dialog.webp
    :alt:
    :align: center

    The Batch Queue Manager Worflow Create Dialog

Later, with a new Queue, if you want to apply a workflow with your precious tools/settings, just double over an item from **Workflow** tab, or drag and drop the item from **Workflow** tab to **Assigned Tools**. The queue is ready to run.
