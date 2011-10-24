#!/bin/bash

 # ============================================================
 #
 # This file is a part of digiKam project
 # http://www.digikam.org
 #
 # Date        : 2009-10-29
 # Description : screenshot preparation script for digiKam handbook
 #
 # Copyright (C) 2009 by Andi Clemens <andi dot clemens at googlemail dot com>
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

extension=

# border variables
bordercolor=Black
border=1

# shadow variables
offset=5
opacity=80
sigma=3
shadowcolor=Black

usage_h_option="See -h for more information."

usage()
{
    cat <<EOF
Usage: $(basename ${0}) <options> file

options:
  -f <width>        set the frame width in px
  -x <offset>       set the shadow offset in px
  -o <opacity>      set the shadow opacity in %
  -s <sigma>        set the shadow blur factor

  -b <extension>    batch mode:
                    change all files with the given <extension>
  -h                show this help
EOF
    exit 1
}

draw_frame()
{
    ret=0
    temp="${1}.FRAME"
    convert "${1}"  \
                -bordercolor ${bordercolor}   \
                -border ${border}x${border}   \
        "${temp}"

    ret=${?}
    mv "${temp}" "${1}"
    return ${ret}
}

draw_shadow()
{
    ret=0
    temp="${1}.SHADOW"
    convert "${1}"  \
        \( +clone                                                       \
                -background ${shadowcolor}                              \
                -shadow ${opacity}x${sigma}+${offset}+${offset}         \
        \) +swap                                                        \
        -background none -layers merge +repage                          \
        "${temp}"

    ret=${?}
    mv "${temp}" "${1}"
    return ${ret}
}

filter()
{
    if [ -w "${1}" ]; then
        echo -n "'${1}' ... "
        draw_frame  "${1}"
        if [ ${?} -eq 0 ]; then
            draw_shadow "${1}"
            if [ ${?} -eq 0 ]; then
                echo "done!"
            else
                echo "FAILED!"
            fi
        else
            echo "FAILED!"
        fi
    else
        echo "'${1}' is not a valid file, or you don't have write permissions."
    fi
}

# -----------------------------------------------------------------------------
# MAIN
# -----------------------------------------------------------------------------
while getopts ":f:x:o:s:hb:" Option
do
    case ${Option} in
        f)  border=${OPTARG};;
        x)  offset=${OPTARG};;
        o)  opacity=${OPTARG};;
        s)  sigma=${OPTARG};;
        b)  extension="${OPTARG}";;
        h)  usage;;
        \?) echo "Unknown option -${OPTARG}"
            echo ${usage_h_option}
            exit 1;;
        :)  echo "Option -${OPTARG} needs an additional argument."
            echo ${usage_h_option}
            exit 1;;
    esac
done
shift $(expr ${OPTIND} - 1)

if [ -z ${extension} ]; then
    if [ ${#} -ne 1 ]; then
        echo "No filename specified. For batch mode, use the -b option."
        echo ${usage_h_option}
        exit 1
    fi
    filter "${1}"
else
    for f in *.${extension}; do
        filter "${f}"
    done
fi

