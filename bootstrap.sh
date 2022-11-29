#!/bin/bash

# SPDX-FileCopyrightText: 2008-2022 by Gilles Caulier, <caulier dot gilles at gmail dot com>
#
# SPDX-License-Identifier: BSD-3-Clause

export MAKEFILES_TYPE='Unix Makefiles'

if [ ! -d "build" ]; then
    mkdir build
fi

cd build

cmake -G "$MAKEFILES_TYPE" . \
      -DCMAKE_INSTALL_PREFIX=/usr \
      -Wno-dev \
      ..

