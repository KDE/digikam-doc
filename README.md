![](logo.png) This repository hosts the digiKam handbook based on [Sphinx](https://www.sphinx-doc.org) framework and [ReStructuredText](https://docutils.sourceforge.io/rst.html) format.

[digiKam](https://www.digikam.org/about/features/) is a powerful Open Source Photo Management Software.

This documentation generated as **HTML** can be read online [here](https://docs.digikam.org/en/index.html).

This documentation generated as **EPUB** can be downloaded [here](https://docs.digikam.org/en/epub/DigikamManual.epub).

[![Build Status](https://binary-factory.kde.org/job/Website_docs-digikam-org/badge/icon)](https://binary-factory.kde.org/job/Website_docs-digikam-org/)

## Setting up Development Environment

Under Ubuntu 22.04:

1. First you need to install [Python version 3](https://www.python.org) and **PIP** (`sudo apt install python3-pip`) as it is required to install Sphinx.
2. You can check whether Python was installed successfully (and your version is 3 and not 2) by running `python --version`
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

[![](project/images/digikam_handbook_HTML.png "HTML Version of digiKam Handbook Shown in Web Browser")](project/images/digikam_handbook_HTML.png)

### Generate an EPUB E-book

Under **Linux:** run `make epub`

The EPUB ebook is generated in `build/epub`. Open the ebook file by double click `DigikamManual.epub`. It must look like this:

[![](project/images/digikam_handbook_EPUB.png "EPUB Version of digiKam Handbook Shown in e-book Viewer")](project/images/digikam_handbook_EPUB.png)

## Directories Hierarchy

- LICENSES  : all licenses used in the project.
- attic     : old DocBook implementations of this manual to backport as ReStructuredText.
- build     : temporary dir created when documentation is compiled.
- ressources: Sphinx templates customization.
- po        : link to handbook translations files.
- project   : some helpers scripts.
- tests     : scripts to test repository contents with CI

## Get Involved

### File Hierarchies

ReStructuredText Documentation implementation is located in top level directory in .rst files and sub-directories
corresponding to handbook sections. The root entry of the manual is **index.rst**.

Each handbook section start with a .rst file from top level directory and a dedicated
sub-directory with the same name including chapters .rst files and a nested **images** sub-directory to host
screen-shots, taken in PNG format. For example, the **getting_started** section will be organized like this:

```
├── index.rst
├── getting_started.rst
└── getting_started
    ├── images
    │   ├── intro-firstrun-step1.png
    │   ├── intro-firstrun-step2.png
    │   ├── intro-firstrun-step3.png
    │   ├── intro-firstrun-step4.png
    │   ├── intro-firstrun-step5.png
    │   ├── intro-firstrun-step6.png
    │   ├── intro-firstrun-step7.png
    │   ├── intro-firstrun-step8.png
    │   ├── intro-firstrun-step9.png
    │   ├── intro-scanprogress.png
    │   └── intro-toolsinterface.png
    ├── introduction.rst
    └── quick_start.rst
```
### The ReStructuredText Format

ReStructuredText is a simple file format for textual data used primarily in the Python programming language
community for technical documentation. It can be edited with a simple Text Editor application as **Kate**
featuring syntax highlighting help help documentation writers.

ReStructuredText is part of the Docutils project of the Python Documentation Special Interest Group,
aimed at creating a set of tools for Python. Docutils can extract comments and information from Python programs,
and format them into various forms of program documentation.

ReStructuredText is a lightweight markup language designed to be both processable by documentation-processing
software such as Docutils, and easily readable by human programmers who are reading and writing Python source code.

A good place to learn **ReStructuredText** format used in this documentation, it's recommend to read [this quick-start](https://docutils.sourceforge.io/docs/user/rst/quickstart.html).

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

### Screenshots Capture

- Always use digiKam AppImage version 8 and later under Linux/Plasma desktop to take screenshots.

- Always use **White Balance** color theme to take screenshots with desktop default icon set (select color theme from Settings/Themes menu).

- No face/people present in photo hosted in screenshots.

- No digiKam version number must be present in screeshots.

- Use a tool as [Spectacle](https://apps.kde.org/spectacle/) to take a shot. Use the region selection option to capture only important area.

- Remove unecessary buttons and dialog header to limit image file size.

- Always use **PNG** file format to save images to prevent compression artifacts.

### PNG Optimizations

Since the documentation is very good it is also very demanding in terms of volume, 80% whereof are screen-shots.

In order to limit the byte count to the minimum the following command chain shall be used to reduce the png file size.

A factor of 2-4 can be gained. From within the folder where the png resides, use script project/optpng.sh.
This script requires [pngnq](https://pngnq.sourceforge.net/) and [optipng](https://optipng.sourceforge.net/) command line tools installed on your system.

To process all png files in one step use this command line from the root directory of this project:

```
find *.png | xargs -0 ./optpng.sh
```

### Translations

The documentations are internationalized by KDE translator teams. In this repository, only the native English
version is maintained and text is written in the DocBook container. These files are parsed daily by scripts which
extract strings to translate. Contents are finaly exported to dedicated containers for translators.

When translations are updated by the translator teams, files are re-injected back by other scripts to this project,
in order to compile internationalized versions of ReStructured files. These files are linked in po/ sub-directories from
this project for future conversion to HTML/EPUB or for packaging.

This project is not involved in the translation workflow. Please contact [KDE translation teams](https://l10n.kde.org/docs/index-script.php)
if you want to contribute to the internationalization.

The status of the digiKam documentation translations is available [here](https://l10n.kde.org/stats/doc/trunk-kf5/package/digikam-doc/).
