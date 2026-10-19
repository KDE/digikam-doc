#!/bin/bash

# SPDX-FileCopyrightText: 2013-2026 by Gilles Caulier, <caulier dot gilles at gmail dot com>
#
# Run CodeSpell static analyzer on whole digiKam source code.
# https://github.com/codespell-project/codespell
#
# To install last version: pipx install codespell
#
# To ignore false positive in source code uses inline comment:
# https://github.com/codespell-project/codespell?tab=readme-ov-file#inline-ignore
#
# SPDX-License-Identifier: BSD-3-Clause
#

# No halt and catch errors in this script, codespell do not like it

. ./common.sh

# Analyzer configuration.
. ./.codespell

StartScript
checksCPUCores

if ! which codespell ; then

    echo "CodeSpell Static analyzer is not available."
    echo "Please install CodeSpell from https://github.com/codespell-project/codespell"
    echo "Aborted..."
    exit 1

else

    echo "Check CodeSpell static analyzer passed..."

fi

ORIG_WD="`pwd`"
REPORT_DIR="report.codespell"

# Get active git branches to create report description string

TITLE="digiKam-doc-$(parseGitBranch)$(parseGitHash)"
echo "CodeSpell Static Analyzer task name: $TITLE"

rm -fr $ORIG_WD/$REPORT_DIR
mkdir -p "$ORIG_WD/$REPORT_DIR"

CODESPELL_VERSION=$(codespell --version)

# Source code root dir (resolved as absolu path)

TOP_DIR="$(realpath ../)"

# Print the skipped directories taken from the config file.

echo "CodeSpell scan root dir   : $TOP_DIR"
echo "CodeSpell exclude paths   : $CODESPELL_EXCLUDE_PATHS"
echo "CodeSpell exclude files   : $CODESPELL_EXCLUDE_FILES"
echo "CodeSpell ignore words    : $CODESPELL_IGNORE_WORDS"
echo "CodeSpell version         : $CODESPELL_VERSION"

FILES=()
mapfile -t FILES < <(ListFiles "$TOP_DIR" "$CODESPELL_EXCLUDE_PATHS" "$CODESPELL_EXCLUDE_FILES")

if [[ ${#FILES[@]} -eq 0 ]]; then
    echo "No files to scan. Aborted..."
    exit 1
fi

echo "CodeSpell files to process: "${#FILES[@]}""
# Uncomment to debug
#FILES_LIST="${FILES[*]}"
#echo "$FILES_LIST"

# Generate TXT report

codespell \
         --count \
         -q 0 \
         -C 1 \
         -L "$CODESPELL_IGNORE_WORDS" \
        "${FILES[@]}" \
         1> ./codespell-trace.txt

# NOTE: codespell return value is not documented and not suitable.

if [[ -f ./codespell-trace.txt ]] ; then

    ISSUES=$(grep -c '^> ' ./codespell-trace.txt)
    mv ./codespell-trace.txt $REPORT_DIR

    # Create an HTML report

    TRACE_FILE="$REPORT_DIR/codespell-trace.txt"
    HTML_FILE="index.html"

    # HTML header

    cat > "$HTML_FILE" << 'EOF'
        <!DOCTYPE html>
        <html lang="en">
        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>CodeSpell Report</title>
            <style>
                :root {
                    --bg: #1e1e1e;
                    --fg: #d4d4d4;
                    --border: #3c3c3c;
                    --th-bg: #2d2d2d;
                    --row-even: #252525;
                }
                @media (prefers-color-scheme: light) {
                    :root {
                        --bg: #ffffff;
                        --fg: #333333;
                        --border: #dddddd;
                        --th-bg: #f2f2f2;
                        --row-even: #f9f9f9;
                    }
                }
                body { font-family: Arial, sans-serif; margin: 20px; background-color: var(--bg); color: var(--fg); }
                h1 { color: var(--fg); }
                table { border-collapse: collapse; width: 100%; margin-bottom: 20px; }
                th, td { border: 1px solid var(--border); padding: 8px; text-align: left; }
                th { background-color: var(--th-bg); }
                tr:nth-child(even) { background-color: var(--row-even); }
                .error { color: #ff6b6b; font-weight: bold; }
                .file { color: #6cb6ff; }
                .line { color: #7fd17f; }
                a { color: #6cb6ff; }
            </style>
        </head>
        <body>
            <h1>CodeSpell Report for __TITLE__</h1>
            <p>Total Errors: __ERRORS__</p>
            <table>
                <thead>
                    <tr>
                        <th>File</th>
                        <th>Line</th>
                        <th>Error</th>
                        <th>Suggestion</th>
                    </tr>
                </thead>
                <tbody>
EOF

# Read trace file and generate the spreadsheet HTML

total_errors=0

while IFS= read -r line ; do

    # Ignore lines without "==>"

    if [[ "$line" == *"==>"* ]] ; then

        total_errors=$((total_errors+1))

        # Uses awk to extract all info

        file=$(echo "$line" | awk -F':' '{print $1}')
        line_num=$(echo "$line" | awk -F':' '{print $2}' | awk '{print $1}')
        error=$(echo "$line" | awk -F'==' '{print $1}' | awk '{print $NF}')
        suggestion=$(echo "$line" | awk -F'==' '{print $2}' | awk '{print $2}')

        # Cleanup file path to make it relative to the repository root

        clean_file="${file#$TOP_DIR/}"
        clean_file="${clean_file#../../}"

        # ESC special char for the HTML code

        file_escaped=$(echo "$clean_file" | sed 's/&/\&amp;/g; s/</\&lt;/g; s/>/\&gt;/g; s/"/\&quot;/g; s/'\''/\&#39;/g;')
        error_escaped=$(echo "$error" | sed 's/&/\&amp;/g; s/</\&lt;/g; s/>/\&gt;/g; s/"/\&quot;/g; s/'\''/\&#39;/g;')
        suggestion_escaped=$(echo "$suggestion" | sed 's/&/\&amp;/g; s/</\&lt;/g; s/>/\&gt;/g; s/"/\&quot;/g; s/'\''/\&#39;/g;')

        # Generate the URL for the Git repository

        git_url="https://invent.kde.org/documentation/digikam-doc/-/tree/master/$clean_file?ref_type=heads#L$line_num"

        # Append a line to the spreadsheet

        cat >> "$HTML_FILE" << EOF
            <tr>
                <td class="file">$file_escaped</td>
                <td class="line"><a href="$git_url" target="_blank">$line_num</a></td>
                <td class="error">$error_escaped</td>
                <td>$suggestion_escaped</td>
            </tr>
EOF

    fi

done < "$TRACE_FILE"

    date=$(date +"%Y-%m-%d")

    # HTML footer

    cat >> "$HTML_FILE" << 'EOF'
        </tbody>
        </table>
            <p>Report generated by <a href="https://github.com/codespell-project/codespell">CodeSpell static analyzer </a> version __VERSION__ at __DATE__</p>
        </body>
    </html>
EOF

    sed -i "s|__TITLE__|$TITLE|g" $HTML_FILE
    sed -i "s|__ERRORS__|$total_errors|g" $HTML_FILE
    sed -i "s|__DATE__|$date|g" $HTML_FILE
    sed -i "s|__VERSION__|$CODESPELL_VERSION|g" $HTML_FILE
    mv ./$HTML_FILE $REPORT_DIR

fi

cd $ORIG_WD

TerminateScript
