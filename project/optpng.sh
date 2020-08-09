#!/bin/bash

 # ============================================================
 #
 # This file is a part of digiKam project
 # http://www.digikam.org
 #
 # Date        : 2016-08-27
 # Description : PNG optimizations for handbook
 #
 # Copyright (C) 2016-2020 by Gilles Caulier <caulier dot gilles at gmail dot com>
 #
 # This program is free software; you can redistribute it
 # and/or modify it under the terms of the GNU General
 # Public License as published by the Free Software Foundation;
 # either version 2, or (at your option)
 # any later version.
 #
 # This program is distributed in the hope that it will be useful,
 # but WITHOUT ANY WARRANTY; without even the implied warranty of
 # MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 # GNU General Public License for more details.
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
