#!/bin/bash

 # ============================================================
 #
 # This file is a part of digiKam project
 # http://www.digikam.org
 #
 # Date        : 2022-12-26
 # Description : convert WEBM screencast to animated WEBP using ffmpeg
 #               First argument is the WEBM file to convert.
 #
 # SPDX-FileCopyrightText: 2021-2022 by Gilles Caulier <caulier dot gilles at googlemail dot com>
 #
 # SPDX-License-Identifier: BSD-3-Clause
 #
 # ============================================================ */

# Create a palette from webm file for the gif encoding
ffmpeg -y -i $1 -vf palettegen palette.png

# Convert WEBM to GIF using palette.
ffmpeg -y -i $1  -i palette.png -filter_complex paletteuse -stream_loop -r 10 $(basename "$1" | cut -d. -f1).webp

rm -f palette.png