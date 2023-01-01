![](project/images/logo.png) This repository hosts the digiKam handbook based on [Sphinx](https://www.sphinx-doc.org) framework and [ReStructuredText](https://docutils.sourceforge.io/rst.html) format.

[digiKam](https://www.digikam.org/about/features/) is a powerful Open Source Photo Management Software.

This documentation generated as **HTML** can be read online [here](https://docs.digikam.org/en/index.html).

This documentation generated as **EPUB** can be downloaded [here](https://docs.digikam.org/en/epub/DigikamManual.epub).

[![Build Status](https://binary-factory.kde.org/job/Website_docs-digikam-org/badge/icon)](https://binary-factory.kde.org/job/Website_docs-digikam-org/)

## Setting up Development Environment

Under Ubuntu 22.04:

1. First you need to install [Python version 3](https://www.python.org) and **PIP** (`sudo apt install python3-pip`) as it is required to install Sphinx.
2. You can check whether Python was installed successfully (and your version is 3 and not 2) by running `python --version`. If necessary run `sudo apt install python-is-python3`.
3. Now you can install Sphinx and the Sphinx Theme by using `python -m pip install --upgrade sphinx sphinx_rtd_theme`
4. You can check whether Sphinx was installed successfully by running `sphinx-build --version`

Under Ubuntu 22.10:

1. To install Sphinx and the Sphinx Theme use `sudo apt install python3-sphinx`
2. You can check whether Sphinx was installed successfully by running `sphinx-build --version`

## Running Sphinx On Your Computer

After you cloned this repository (only need to be done once), use a command line to go to its root folder (e.g. with `cd /path/to/digikam-docs`)

### Generate an HTML Web Documentation

Under **Linux:** run `make html`

The HTML is generated in `build/html`. Open the web document by double click `index.html`. It must look like this:

[![](project/images/handbook_HTML.webp "HTML Version of digiKam Handbook Shown in Web Browser")](project/images/handbook_HTML.webp)

### Generate an EPUB E-book

Under **Linux:** run `make epub`

The EPUB ebook is generated in `build/epub`. Open the ebook file by double click `DigikamManual.epub`. It must look like this:

[![](project/images/handbook_EPUB.webp "EPUB Version of digiKam Handbook Shown in e-book Viewer")](project/images/handbook_EPUB.webp)

## Directories Hierarchy

- LICENSES  : all licenses used in the project.
- build     : temporary dir created when documentation is compiled.
- locale    : link to updated handbook translations files.
- po        : Obsolete, not used. Replaced by locale directory.
- project   : some helpers scripts.
- ressources: Sphinx templates customization.
- tests     : scripts to test repository contents with CI

All others directories are used to host sections of the documentation implemented in ReStructuredText format.

## Get Involved

### File Hierarchies

ReStructuredText Documentation implementation is located in top level directory in .rst files and sub-directories with the same name
corresponding to the handbook sections. The root entry of the manual is **index.rst**.

Each handbook section start with a .rst file from top level directory and a dedicated
sub-directory with the same name including chapters .rst files, a nested **images** sub-directory to host
screen-shots, taken in WEBP format, and a nested **videos** sub-directory to host screen-casts in animated Gif format.
For example, the **getting_started** section will be organized like this:

```
├── index.rst
├── getting_started.rst
└── getting_started
    ├── images
    │   ├── firstrun_step1.webp
    │   ├── firstrun_step2.webp
    │   ├── firstrun_step3.webp
    │   ├── firstrun_step4.webp
    │   ├── firstrun_step5.webp
    │   ├── firstrun_step6.webp
    │   ├── firstrun_step7.webp
    │   ├── firstrun_step8.webp
    │   ├── firstrun_step9.webp
    │   ├── macos_pkg_installer.webp
    │   ├── macos_pkg_security.webp
    │   ├── macos_pkg_warning.webp
    │   ├── models_downloader.webp
    │   ├── scan_progress.webp
    │   └── tools_interface.webp
    ├── installation.rst
    ├── introduction.rst
    ├── quick_start.rst
    └── videos
        └── appimage_startup.gif

```

**getting_started.rst** is the root entry of the **Geting-Started** section of this manual.
All others nested **.rst** files hosted in **getting_started** sub-directory are chapters in this section. 

### Sphinx Framework

The Python based Sphinx documentation generator translates a set of reStructuredText source files into various output formats,
automatically producing cross-references, indices etc. It just used at run-time with the **make html** command to
render contents, and reports warnings/errors.

Documentation writer will never touch the Sphinx configuration.

### The ReStructuredText Format

ReStructuredText is a simple file format for textual data used primarily in the Python programming language
community for technical documentations. It can be edited with a simple Text Editor application as
[Kate](https://kate-editor.org/) featuring syntax highlighting to help documentation writers.

ReStructuredText is part of the [DocUtils project](https://docutils.sourceforge.io/) from the Python Documentation Special Interest Group,
aimed at creating a set of tools for Python. DocUtils can extract comments and information from ReStructuredText,
and format them into various forms of program documentation.

ReStructuredText is a lightweight markup language designed to be both processable by documentation-processing
software such as DocUtils, and easily readable by human who are reading and writing source code.

Take care that ReStructuredText file (.rst) specificities:

- It's an indent featured markup language. Respect well the spaces on front of blocks to prevent compilation warnings.
- Indent must be done with **4 spaces**, never use tabs at all.
- Always save ResStructuredText file using **UNIX end-of-line**, Check your editor settings before.
- Never use space or minus in file name, uses underscore instead.
- Never uses capitalized forms in filenames, always uses lowercase characters.

A good place to learn **ReStructuredText** format used in this documentation, it's recommended to read:

- [Quick-start](https://docutils.sourceforge.io/docs/user/rst/quickstart.html).
- [Cheat-sheet](http://docutils.sourceforge.net/docs/user/rst/cheatsheet.txt).
- [Reference](http://docutils.sourceforge.net/docs/user/rst/quickref.html).

[This StackOverflow entry](https://stackoverflow.com/questions/2746692/restructuredtext-tool-support) list the tools avaialble to work with ResStructuredText files.

### ReStructuredText Syntax Reminders

Type                                 | Syntax
-------------------------------------|------------------------------------------------------------------------------
Menu Entry                           | ``` :menuselection:`View --> Sort Albums --> By Category` ```
Keyboard Shortcut                    | ``` :kbd:`CTRL + w` ```
Internal Reference Definition        | ``` .. _album_view: ```
Link to Internal reference           | ``` :ref:`the Album section <albums_view>` ```
Link to External Url                 | ``` `digiKam Home Page <https://www.digikam.org/>`_ ```
Italic Text                          | ``` *Cancel button* ```
Bold Text                            | ``` **Ok button** ```
File Name                            | ``` :file:`recogintion.db` ```
Raw Text Section (as console output) | ``` .. code-block:: text ```
Inline Icon Declaration              | ``` .. \|icon_fullscreen\| image:: images/mainwindow_icon_fullscreen.webp ```
Inline Icon Usage                    | ``` \|icon_fullscreen\| ```
GUI Elements (button, label, title)  | ``` :guilabel:`Start Encoding...` ```
Section Title Level 1                | ``` ============ ```
Section Title Level 2                | ``` ------------ ```
Section Title Level 3                | ``` ~~~~~~~~~~~~ ```

Table example:
```
============== ========== =======
Title 1        Title 2    Title 3
============== ========== =======
Item 1         Value 1    Value 2
Item 2         Value 1    Value 2
Item 3         Value 1    Value 2
Item 4         Value 1    Value 2
Item 5         Value 1    Value 2
============== ========== =======
```
Nested list
```
- Level 1

    - Level 2
    - Level 2

- Level 1

    - Level 2
    - Level 2
    - Level 2
    - Level 2
```
### Contribute Workflow

To help us to write this English documentation, you must use a standard git workflow based on the Fork/Merge Request mechanism.
You will not have direct access to this repository.
All new contributors must process as below:

- Create an account at [KDE identity](https://identity.kde.org/).
- Be logged with this account to [KDE git server](https://invent.kde.org/users/sign_in).
- [Fork this project](https://invent.kde.org/documentation/digikam-doc/-/forks/new) to your account.

All contributor changes must be performed in this forked repository. Contributors can use the web interface to edit
existing files or to clone the repository on a computer to process advanced operations such as to create new contents.
At the end, the contributor commits the new files in the forked repository.

When all contributor tasks are done, a Merge Request must be send to the original (Central) project to:

- Notify the coordinator about the contribution.
- Coordinator will review the changes.
- Coordinator can post comments in the Merge Request if something is wrong (aka ReStructuredText compilation fails with the Continuous Integration).
- Contributor must adjust, comment, or rebase changes in the forked repository accordingly with coordinator feedback.
- When all is ready, coordinator merge changes from the forked repository to the original repository.

Later, a contributor can re-use the forked repository to rebase contents with original. The forked repository
will be up-to-date and the contributor can create a new Merge Request with new changes to integrate in the original repository.

This git workflow is well [documented in KDE project](https://community.kde.org/Infrastructure/Git/Simple_Workflow).

### WEBP Screenshot Capture

- Always use digiKam AppImage version 8 and later under Linux/Plasma desktop to take screenshots.

- Always use **White Balance** color theme to take screenshots. Select theme from Settings/Themes menu.

- Always use **Breeze** widget style and icon theme. Select widget/icon theme from Setup/Miscs/Appearance configuration dialog page.

- No face/people present as possible in photo hosted in screenshots.

- No digiKam version number must be present in screenshots.

- Desktop and application must be in English only. Do not mix languages.

- Use a tool as [Spectacle](https://apps.kde.org/spectacle/) to take a shot. Use the region selection option to capture only important area.

- Remove unecessary buttons and dialog header to limit image file size.

- Always use **WEBP** file format to save images.

- Do not use space and capitalized characters in file name.

- WEBP files must be hosted in **images/** sub-folders from each documentation section. 

- To include the screenshot in a ReStructuredText file, use the syntax below;

```
.. figure:: images/my_screen_shot.webp
    :alt:
    :align: center

    My Screenshot Legend
```

### GIF Animated Screencast Capture

Another format supported inside the documentation is **GIFa** video. It can be used to present a region of screen
from the application while an operation is under progress. It's perfect to write tutorials.

Use the same specifications to take screencast than for screenshot, aka color theme, widget style, icon theme, etc.

To prevent huge GIFa files, just capture the right area from application and limit capture to less than 10 seconds.

A good tool to capture video from desktop is [SimpleScreenRecorder](https://www.maartenbaert.be/simplescreenrecorder/).

Configuration:

    - Container : WEBM.
    - Codec : VP8.
    - Bitrate: 5000 kbit/s.
    - Record cursor.

Do not use space and capitalized characters in file name.

This will record a screencast in WEBM format. Even if WEBM is supported in HTML and EPUB,
Sphinx framework is not yet able to embed WEBM in EPUB.
Convert it to GIFa using **project/webm2gif.sh** script.

GIFa files must be hosted in **videos/** sub-folders from each documentation section.

- To include the screencast in a ReStructuredText file, use the syntax below;

```
.. figure:: videos/my_screen_cast.gif
    :width: 600px
    :alt:
    :align: center

    My Screencast Legend
```

### Translations

#### Overview

The documentations are internationalized by KDE translator teams. In this repository, only the native English
version is maintained and text is written in ReStructuredText containers. These files are daily parsed by
maintenance scripts to extract strings and exported to dedicated containers for translators.

In the background, a [top level script](https://invent.kde.org/sysadmin/l10n-scripty/-/blob/master/process-static-messages.sh) from **l10n-scripty** repository call **StaticMessages.sh** script from this repository.

When translations are updated by the translator teams, files are send back by other maintenance scripts to this project,
in goal to compile internationalized versions of ReStructuredText files. These files are linked in **locale/** sub-directories
from this project for conversion to HTML/EPUB.

This project is not involved in the translations workflow. Please contact [KDE translation teams](https://l10n.kde.org/docs/index-script.php)
if you want to contribute to the internationalization.

The template files to translate for this documentation must be located on [this i10n Subversion repository](https://websvn.kde.org/trunk/l10n-kf5/templates/messages/digikam-doc/).
All POT file-names starts with **docs_digikam_org** prefix.

#### How to Add a New Target Language

The status of the digiKam documentation translations is available [here](https://l10n.kde.org/stats/doc/trunk-kf5/package/digikam-doc/).
When a translation is complete, corresponding language can be listed as suitable in documentation web-site, Two files needs to be patched:

- The section named **docs-digikam-org** from the [Json infrastrusture configuration](https://invent.kde.org/sysadmin/binary-factory-tooling/-/blob/master/staticweb/custom-jobs.json) dedicated to rule translations.
- The **alllang** list from the **resources/static/js/version_switch.js** JavaScript file located in this repository.

### TODO List

See **TODO** file from this repository.

### Rationale

See the technical details from [this Phabricator entry](https://phabricator.kde.org/T16036) about the DocBook to Sphinx/ReStructuredText manual conversion.
