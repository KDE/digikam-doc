#!/bin/bash

 # ============================================================
 #
 # This file is a part of digiKam project
 # http://www.digikam.org
 #
 # Date        : 2016-08-27
 # Description : Make PNG screenshot for handbook
 #
 # SPDX-FileCopyrightText: 2008-2022 by Gilles Caulier, <caulier dot gilles at gmail dot com>
 #
 # SPDX-License-Identifier: BSD-3-Clause
 #
 # ============================================================ */

./screenshot-dropshadow.sh $1
./optpng.sh $1
