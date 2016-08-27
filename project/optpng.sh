#!/bin/bash

 # ============================================================
 #
 # This file is a part of digiKam project
 # http://www.digikam.org
 #
 # Date        : 2016-08-27
 # Description : PNG optimizations for handbook
 #
 # Copyright (C) 2016 by Gilles Caulier <caulier dot gilles at gmail dot com>
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

ls -al $1
pngnq -s 1 -f $1 && optipng $1
ls -al $1
