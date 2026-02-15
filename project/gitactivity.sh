#!/bin/bash

# ===========================================================
#
# This file is a part of digiKam project
# https://www.digikam.org
#
# Date:        2026-02-14
# Description: Script to generate a video of the git activity.
#              Dependencies: gource and ffmpeg.
#              Arguments: the git user name (if null, whole team is displayed).
#              Exemple: ./gitactivity.sh Maik Qualmann
#
# Copyright (C) 2011-2026 by Gilles Caulier <caulier dot gilles at gmail dot com>
#
# SPDX-License-Identifier: BSD-3-Clause
#
# ============================================================

USER_NAME=$*

if [[ $USER_NAME == "" ]] ; then

    gource --highlight-colour FFB0B0 \
           --user-font-size 30 \
           --seconds-per-day 0.1 \
           -f --high-dpi \
           --git-branch master \
           --user-filter "Script Kiddy" \
           --user-filter "l10n daemon script" \
           --hide filenames \
           --file-extensions \
           --highlight-users \
           --max-file-lag 0.5 \
           --auto-skip-seconds 1 \
           --title "digiKam Documentation Git Repository Activity" \
           --logo "../logo.png" \
           --output-framerate 25 \
           -o - | \
           ffmpeg -y -r 25 \
                  -f image2pipe \
                  -vcodec ppm \
                  -i - -vcodec libx265 \
                  -preset ultrafast \
                  -pix_fmt yuv420p \
                  -crf 20 \
                  -threads 0 \
                  -bf 0 \
                  "digiKam_documentation_activity.mp4"

else

    gource --user-show-filter "${USER_NAME}" \
           --highlight-colour FFB0B0 \
           --user-font-size 30 \
           --seconds-per-day 0.1 \
           -f --high-dpi \
           --git-branch master \
           --hide filenames \
           --file-extensions \
           --highlight-users \
           --max-file-lag 0.5 \
           --auto-skip-seconds 1 \
           --title "digiKam Documentation Git Repository Activity for ${USER_NAME}" \
           --logo "../logo.png" \
           --output-framerate 25 \
           -o - | \
           ffmpeg -y -r 25 \
                  -f image2pipe \
                  -vcodec ppm \
                  -i - -vcodec libx265 \
                  -preset ultrafast \
                  -pix_fmt yuv420p \
                  -crf 20 \
                  -threads 0 \
                  -bf 0 \
                  "digiKam_documentation_${USER_NAME}_activity.mp4"

fi
