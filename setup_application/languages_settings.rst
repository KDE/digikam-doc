.. meta::
   :description: digiKam Languages Settings
   :keywords: digiKam, documentation, user manual, photo management, open source, free, learn, easy, camera, configuration, setup, languages, translations, internationalization

.. metadata-placeholder

   :authors: - digiKam Team

   :license: see Credits and License page for details (https://docs.digikam.org/en/credits_license.html)

.. _languages_settings:

:ref:`Languages Settings <setup_application>`
=============================================

digiKam has been localized into at least dozens of languages.

You can change digiKam's primary language from the :menuselection:`Settings --> Configure Language...` menu item. This opens a dialog where you can select the **Primary language** and add an optional **Fallback language**. The primary language determines which translated strings will be used in the application, and this will be your native language. The fallback language is used to fill-in translations if any internationalized strings are missing from the primary set of strings.

.. figure:: images/setup_languages_dialog.webp
    :alt:
    :align: center

    The digiKam Languages Configuration Dialog

Translating an application such as digiKam is a long task and requires a lot of verification and validation before it is made available in the production code. Each language is maintained by independent teams which release updates at different times, that are not necessarily in sync with digiKam release dates.

.. note::

    You can set more than one fallback language in digiKam, the lead one is on the top of this list.

The drop-down menu used for selecting a language contains a long list of entries, so scrolling may be required. There are currently more than 70 language teams, providing translations for a wide variety of languages, including some that are often not supported by proprietary software.

.. figure:: images/setup_languages_list.webp
    :alt:
    :align: center

    The List of Languages Available to Internationalize the Application

.. important::

    A language setting change requires the application be restarted before the change takes effect.

If you want to help with the application translations, please consult the :ref:`Contribute  <project_contribute>` section of this manual.
