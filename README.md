![](logo.png) This repository hosts the digiKam handbook based on [Sphinx](https://www.sphinx-doc.org) framework and [ReStructuredText](https://docutils.sourceforge.io/rst.html) format.

[digiKam](https://www.digikam.org/about/features/) is a powerful Open Source Photo Management Software.

This documentation generated as HTML can be read online [here](https://docs.digikam.org/en/index.html).

[![Build Status](https://binary-factory.kde.org/job/Website_docs-digikam-org/badge/icon)](https://binary-factory.kde.org/job/Website_docs-digikam-org/)

## Setting up Development Environment

Under Ubuntu 22.04:

1. First you need to install [Python version 3](https://www.python.org) and PIP (`sudo apt install python3-pip`) as it is required to install Sphinx.
2. You can check whether Python was installed successfully (and your version is 3 and not 2) by running `python --version`
3. Now you can sphinx and the sphinx theme we are using with `python -m pip install --upgrade sphinx sphinx_rtd_theme`
4. You can check whether sphinx was installed successfully by running `sphinx-build --version`

Under Ubuntu 22.10:

1. Now you can sphinx and the sphinx theme we are using with `sudo apt install python3-sphinx`
2. You can check whether sphinx was installed successfully by running `sphinx-build --version`

## Running Sphinx

After you cloned this repository (only need to be done once), use a command line to go to its root folder (e.g. with `cd /path/to/digikam-docs`)

### To generate a html web documentation run

**Linux:** `make html`

The HTML is generated in `build/html` (e.g. with `/path/to/digikam-docs/build/html`). Open the web document by double click `index.html`.

[![](project/images/digikam_handbook_HTML.png "HTML Version of digiKam Handbook Shown in Web Browser")](project/images/digikam_handbook_HTML.png)

### To generate an epub ebook run

**Linux:** `make epub`

The epub ebook is generated in `build/epub` (e.g. with `/path/to/digikam-docs/build/epub`). Open the ebook by double click `DigikamManual.epub`.

[![](project/images/digikam_handbook_EPUB.png "EPUB Version of digiKam Handbook Shown in EPUB Viewer")](project/images/digikam_handbook_EPUB.png)

## Directories Hierarchy

- LICENSES  : all licenses used in the project.
- attic     : old DocBook implementations of this manual to backport as ReStructuredText.
- build     : temporary dir created when documentation is compiled.
- ressources: Sphinx templates customization.
- po        : link to handbook translations files.
- project   : some helpers scripts.
- tests     : scripts to test repository contents with CI

## Get involved

Documentation ReStructuredText implementations are located in top level directory in .rst files and sub-directories
corresponding to handbook sections. The root entry of the manual is index.rst.

Each handbook section includes screen-shots, taken in PNG format and are stored in images/ subdirectory.

A good place to learn ReStructuredText format used in this documentation, it's recommend to read [this quick-start](https://docutils.sourceforge.io/docs/user/rst/quickstart.html).

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
- Coordinator can post comments in the Merge Request if something is wrong (aka DocBook compilation fails with the Continuous Integration).
- Contributor must adjust, comment, or rebase changes in the forked repository accordingly with coordinator feedback.
- When all is ready, coordinator merge changes from the forked repository to the original repository.

Later, a contributor can re-use the forked repository to rebase contents with original. The forked repository
will be up-to-date and the contributor can create a new Merge Request with new changes to integrate in the original repository.

This git workflow is well [documented in KDE project](https://community.kde.org/Infrastructure/Git/Simple_Workflow).

### Taking screenshots

- Never use advanced color themes to take screenshots. Always use the desktop default color and icon set.

- Use Festival Import to take a shot. Use the region selection option to select only
  important areas. Remove buttons and dialog header to limit image file size.
  Always use PNG file format to save images to prevent compression artifacts.

### PNG screenshot optimizations

Since the documentation is very good it is also very demanding in terms of volume, 80% whereof are screenshots.

In order to limit the byte count to the minimum the following command chain shall be used to reduce the png file size.

A factor of 2-4 can be gained. From within the folder where the png resides, use script project/optpng.sh.
This script requires pngnq and optipng command line tools installed on the system.

To process all png files in one step use this command line:

```
find *.png | xargs -0 ./makess.sh
```
### Status of translations

The documentations are internationalized by KDE translator teams. In this repository, only the native English
version is maintained and text is written in the DocBook container. These files are parsed daily by scripts which
extract strings to translate. Contents are finaly exported to dedicated containers for translators.

When translations are updated by the translator teams, files are re-injected back by other scripts to this project,
in order to compile internationalized versions of DocBook files. These files are linked in po/ sub-directories from
this project for future conversion to HTML/PDF or for packaging.

This project is not involved in the translation workflow. Please contact [KDE translation teams](https://l10n.kde.org/docs/index-script.php)
if you want to contribute to the internationalization.

The status of the digiKam documentation translations is available [here](https://l10n.kde.org/stats/doc/trunk-kf5/package/digikam-doc/).
