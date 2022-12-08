![](logo.png) This repository hosts the digiKam handbook based on [Sphinx](https://www.sphinx-doc.org) framework and [ReStructuredText](https://docutils.sourceforge.io/rst.html) format.

[digiKam](https://www.digikam.org/about/features/) is a powerful Open Source Photo Management Software.

This documentation generated as HTML can be read online [here](https://docs.digikam.org).

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

## Running sphinx

After you cloned this repository (only need to be done once), use a command line to go to its root folder (e.g. with `cd /path/to/digikam-docs`)

### To generate a html web documentation run

**Linux:** `make html`

The HTML is generated in `build/html` (e.g. with `/path/to/digikam-docs/build/html`). Open the web document by double click `index.html`.

### To generate an epub ebook run

**Linux:** `make epub`

The epub ebook is generated in `build/epub` (e.g. with `/path/to/digikam-docs/build/epub`). Open the ebook by double click `index.xhtml`.

## Get involved

To contribute to this Manual, see [details here](https://www.digikam.org/contribute/).

## Status of translations

The status of the digiKam documentation translations is available [here](https://l10n.kde.org/stats/doc/trunk-kf5/package/digikam-doc/).
