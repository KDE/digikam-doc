#!/bin/bash

 # ============================================================
 #
 # This file is a part of digiKam project
 # http://www.digikam.org
 #
 # Date        : 2023-01-27
 # Description : batch convert animated GIf to WEBP using ffmpeg
 #
 # SPDX-FileCopyrightText: 2021-2022 by Gilles Caulier <caulier dot gilles at googlemail dot com>
 #
 # SPDX-License-Identifier: BSD-3-Clause
 #
 # ============================================================ */

for f in *.gif; do ffmpeg -y -i "$f" -r 10 $(basename "$f" | cut -d. -f1).webp ; done

rm -fr *.gif

git add *.webp