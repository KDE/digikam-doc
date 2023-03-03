.. meta::
   :description: digiKam Notifications Settings
   :keywords: digiKam, documentation, user manual, photo management, open source, free, learn, easy, colors, notifications, configuration

.. metadata-placeholder

   :authors: - digiKam Team

   :license: see Credits and License page for details (https://docs.digikam.org/en/credits_license.html)

.. _notifications_settings:

Notifications Settings
======================

.. contents::

.. note::

    This feature is only available on Linux desktop.

digiKam has notification settings that are integrated into the larger Linux desktop environment. digiKam use the Plasma desktop notification system which is configurable for any type of use cases when application complete important tasks.

digiKam has a dedicated notifications configuration dialog accessed via the :menuselection:`Settings --> Configure Notifications` main menu item.

.. figure:: images/setup_notifications_dialog.webp
    :alt:
    :align: center

    The digiKam Notifications Configuration Dialog

This dialog allows you to edit the application notifications.

The **State** column tells you which types of notifications are enabled for a particular event. digiKam gives you six options for this:

    - **Play a sound**: choose any supported audio file you want.
    - **Show a message in a popup**: the standard method.
    - **Log to a file**: useful if you want to keep track of how often an event occurs.
    - **Mark taskbar entry**: the taskbar will change colors to alert you of the event.
    - **Run command**: with this you can enable more advanced responses to notifications. When a certain event finishes, it can spawn a program that starts another.
    - **Speech**: voice synthesis will be used to play an audio message.

As an example, suppose you want to change the way digiKam notifies you when a *Batch Queue is completed* to automatically play a sound. To change this, do the following:

    - Choose the event in the list **Batch queue completed**.
    - Check the **Play a sound** box.
    - Select the right audio file to play.

 The digiKam notification system can be as active or as passive as you want. You can even detach a notification popup and move it to a different location. It provides the ultimate flexibility for all types of users.
 
