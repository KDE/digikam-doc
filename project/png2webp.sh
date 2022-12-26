#!/bin/bash

 # ============================================================
 #
 # This file is a part of digiKam project
 # http://www.digikam.org
 #
 # Date        : 2022-12-26
 # Description : batch convert PNg to Webp using ImageMagick
 #
 # SPDX-FileCopyrightText: 2021-2022 by Gilles Caulier <caulier dot gilles at googlemail dot com>
 #
 # SPDX-License-Identifier: BSD-3-Clause
 #
 # ============================================================ */

for f in *.png; do convert "$f"  $(basename "$f" | cut -d. -f1).webp ; done

rm -fr *.png

git add *.webp