#
# Copyright (c) 2010-2014, Gilles Caulier, <caulier dot gilles at gmail dot com>
#
# Redistribution and use is allowed according to the terms of the BSD license.
# For details see the accompanying COPYING-CMAKE-SCRIPTS file.

find_package(KDE4 REQUIRED)
include(KDE4Defaults)
include(MacroLibrary)

KDE4_CREATE_HANDBOOK(index.docbook INSTALL_DESTINATION ${HTML_INSTALL_DIR}/en SUBDIR digikam)
