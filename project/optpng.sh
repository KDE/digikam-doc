#!/bin/bash

 # ============================================================
 #
 # This file is a part of digiKam project
 # http://www.digikam.org
 #
 # Date        : 2016-08-27
 # Description : PNG optimizations for handbook
 #
 # SPDX-FileCopyrightText: 2008-2022 by Gilles Caulier, <caulier dot gilles at gmail dot com>
 #
 # SPDX-License-Identifier: BSD-3-Clause
 #
 # ============================================================ */

for f in `find ../digikam -iname \*.png`; do
    ORG_SIZE=$(du -b $f | awk '{print $1}')
    pngnq -s 1 -f -e .png $f 2>/dev/null
    optipng -quiet $f
    NEW_SIZE=$(du -b $f | awk '{print $1}')
    DIF_SIZE=$((ORG_SIZE-NEW_SIZE))
    echo "Optimization of $f : $DIF_SIZE bytes"
done
