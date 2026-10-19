#!/bin/bash

# SPDX-FileCopyrightText: 2013-2026 by Gilles Caulier, <caulier dot gilles at gmail dot com>
#
# SPDX-License-Identifier: BSD-3-Clause
#

########################################################################
# checks if branch has something pending
function parseGitDirty()
{
    git diff --quiet --ignore-submodules HEAD 2>/dev/null; [ $? -eq 1 ] && echo "M"
}

########################################################################
# gets the current git branch
function parseGitBranch()
{
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/\1/"
}

########################################################################
# get last commit hash prepended with @ (i.e. @8a323d0)
function parseGitHash()
{
    git rev-parse --short HEAD 2> /dev/null | sed "s/\(.*\)/-rev-\1/"
}

########################################################################
# Update online static analyze report.
# arg1: static analyzer name (clang, cppcheck, krazy, ...).
# arg2: static analyzer report directory with html contents.
# arg3: static analyzer report title.
# arg4: git branch name.
#
function updateOnlineReport()
{
    DK_UPLOADURL="digikam@tinami.kde.org"
    DK_UPLOADDIR="/srv/archives/files/digikam/reports/"

    echo -e "---------- Create archive '$1_$4' of static analyzer report from directory '$2'\n"

    XZ_OPT=-9 tar cJf $1_$4.tar.xv $2

    echo -e "---------- Cleanup older static analyzer report from remote web site\n"

    sftp -q $DK_UPLOADURL:$DK_UPLOADDIR <<< "rm $1_$4.tar.xv"

    echo -e "---------- Upload new static analyzer report\n"

    rsync -r -v --progress -e ssh $1_$4.tar.xv $DK_UPLOADURL:$DK_UPLOADDIR

    rm -fr $1_$4.tar.xv

    echo -e "---------- Report is available online at https://files.kde.org/digikam/reports/\n"
}

########################################################################
# Check CPU core available (Linux or MacOS)
function checksCPUCores()
{
    CPU_CORES=$(grep -c ^processor /proc/cpuinfo 2>/dev/null || sysctl -n hw.ncpu)

    if [[ $CPU_CORES -gt 1 ]]; then
        CPU_CORES=$((CPU_CORES-1))
    fi

    echo "CPU Cores to use : $CPU_CORES"
}

########################################################################
# For time execution measurement ; startup
StartScript()
{

BEGIN_SCRIPT=$(date +"%s")

}

# For time execution measurement : shutdown
TerminateScript()
{

TERMIN_SCRIPT=$(date +"%s")
difftimelps=$(($TERMIN_SCRIPT-$BEGIN_SCRIPT))
echo "Elaspsed time for script execution : $(($difftimelps / 3600 )) hours $((($difftimelps % 3600) / 60)) minutes $(($difftimelps % 60)) seconds"

}

########################################################################
# ListFiles <root_dir> <exclude_paths_list> <exclude_files_list>
# - exclude_paths_list : path patterns (glob) séparated by commas
# - exclude_files_list : file names patterns (glob)  séparated by commas
# Output : white-list of absolutes files paths, 1 per line.
#
# Usage:
#
# mapfile -t FILES < <(ListLiles /home/gilles/Devel/9.x "$EXCLUDE_PATHS" "$EXCLUDE_FILES")
# echo "Files to scan: ${#FILES[@]}"
#
ListFiles()
{
    local root="$1"
    local excl_paths="$2"
    local excl_files="$3"

    local -a prune_args=() name_args=()
    local p

    # cut as arrays the lists separated by comans 

    local -a paths=()
    [[ -n "$excl_paths" ]] && IFS=',' read -r -a paths <<< "$excl_paths"

    local -a files=()
    [[ -n "$excl_files" ]] && IFS=',' read -r -a files <<< "$excl_files"

    # Cleanup directories: no need to descent in low level (-prune)

    for p in "${paths[@]}"; do
        [[ -n "$p" ]] && prune_args+=( -path "$p" -o )
    done

    local -a args=()

    if (( ${#prune_args[@]} )); then
        unset 'prune_args[${#prune_args[@]}-1]'    # drop the final -o
        args+=( "${prune_args[@]}" -prune -o )
    fi

    args+=( -type f )

    # Patterns filtering of file-names

    for p in "${files[@]}"; do
        [[ -n "$p" ]] && name_args+=( ! -name "$p" )
    done
    (( ${#name_args[@]} )) && args+=( "${name_args[@]}" )

    args+=( -print )

    find "$(realpath "$root")" "${args[@]}"
}
