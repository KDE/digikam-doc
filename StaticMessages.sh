#!/usr/bin/env bash

# SPDX-License-Identifier: BSD-3-Clause

EXPORTS_POT_DIR=1
FILE_PREFIX=docs_digikam_org_

function export_pot_dir # First parameter will be the path of the directory where we have to store the pot files
{
    echo "Creating POT files in $1"
    potdir=$1
    make gettext
    cd build/gettext
    #rm -rf untranslatable_pages.pot untranslatable_pages
    # Flatten the dir structure
    echo "> Add docs_digikam_org_ prefix"
    find * -type f -exec bash -c 'new=$(echo "{}" | sed s#/#___#g); mv "{}" "docs_digikam_org_$new"' \;
    echo "> Move files to $1"
    mv *.pot $potdir
    #echo "> clean up"
    #rm -rf *
}

function import_po_dirs # First parameter will be a path that will be a directory to the dirs for each lang and then all the .po files inside
{
    echo "Import PO dirs: $1"
    podir=$1
    mkdir -p locale
    # for some reason sphinx uses nb_NO instead of nb
    mv $podir/nb $podir/nb_NO
    # for some reason sphinx uses uk_UA instead of uk
    mv $podir/uk $podir/uk_UA
    # for some reason sphinx uses pt_PT instead of pt
    mv $podir/pt $podir/pt_PT
    # These are the language codes that sphinx supports.
    # https://www.sphinx-doc.org/en/master/usage/configuration.html#confval-language
    # -> Languages supported by sphinx, but not supported by KDEs l10n: cak – Kaqchikel, hi_IN – Hindi (India),
    #    sr@latin – Serbian (Latin), sr_RS – Serbian (Cyrillic), ur – Urdu
    for lang in ar bg bn ca cs cy da de el eo es et eu fa fi fr he hi hr hu id it ja ko lt lv mk nb_NO ne nl pl pt_BR pt_PT ro ru si sk sl sq sr sv ta te tr uk_UA vi zh_CN zh_TW
    do
        if [ -d "$podir/$lang" ]; then
            echo "> processing language $lang"
            rm -rf locale/$lang/LC_MESSAGES
            mkdir -p locale/$lang/LC_MESSAGES
            echo locale/$lang/LC_MESSAGES
            mv $podir/$lang/*.po locale/$lang/LC_MESSAGES
            cd locale/$lang/LC_MESSAGES
            # Recreate the dir structure
            find * -type f -exec bash -c 'new=$(echo "{}" | sed s#docs_digikam_org_##g | sed s#___#/#g); mkdir -p `dirname $new`; mv "{}" $new' \;
            cd ../../..
            rm -rf $podir/$lang
        fi
    done
    ls $podir # This will "complain" about languages that are translated but unsupported in sphinx, once we have one we'll have to think what to do
}
