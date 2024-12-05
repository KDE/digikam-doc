.. meta::
   :description: digiKam Batch Queue Manager Workflow
   :keywords: digiKam, documentation, user manual, photo management, open source, free, learn, easy, batch, queue, manager, tools, workflow

.. metadata-placeholder

   :authors: - digiKam Team

   :license: see Credits and License page for details (https://docs.digikam.org/en/credits_license.html)

.. _bqm_workflow:

:ref:`Workflow <batch_queue>`
=============================

The Batch Queue Manager has a tab named **Workflow** in the bottom right of the window which is empty by default. This view is a list where the user can store the preferred set of tools to assign to queues. This list is saved and restored between sessions allowing the workflows to be re-used.

A workflow stores:

    - The order of the tools to apply to a queue from the **Assigned Tools** view.
    - All individual tool settings customized in the **Tools Settings** view .
    - All settings from the **Queue Settings** view.

Workflows allow easy reproduction of the tools and settings used for batch processing, all adjusted for your specific use cases. A workflow has three properties identified in the **Workflow** tab:

    - A **Title** to name the workflow.
    - A **Description** to give details about a workflow.
    - The number of tools stored in the workflow.

 All of this information is stored in an XML file hosted in your home directory.

.. figure:: images/bqm_workflow_view.webp
    :alt:
    :align: center

    The Batch Queue Manager Workflow Stores all Settings to Apply to a Queue

To create a new Workflow, select tools from the **Base Tools** tab and drag and drop items to the **Assigned Tools** list to create a tool sequence. Adjust the tool settings as needed. Then right click on the tool list to bring up the context menu, and select the **Create Workflow** option. A dialog will appear to enter the workflow **Title** and **Description** properties. Press **OK** to append the new item to the **Workflow** tab.

.. figure:: images/bqm_workflow_create_dialog.webp
    :alt:
    :align: center

    The Batch Queue Manager Workflow Create Dialog

To apply a workflow to a new Queue, select the new Queue, then double click over an item in the **Workflow** tab, or drag and drop the item from the **Workflow** tab to **Assigned Tools**. The Workflow will be assigned to the current Queue and will be ready to run.

To manage a workflow entry, right-click on an entry in the **Workflow** tab to enable the context menu that provides options to edit workflow properties or delete the workflow.

.. figure:: images/bqm_workflow_context_menu.webp
    :alt:
    :align: center

    The Batch Queue Manager Workflow Context Menu
