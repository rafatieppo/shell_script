#!/bin/bash
# ------------------------------------------------------------
# Goal: replace text between tags for TCX files from polar flow app
# It is necessary because Garmin Connect does not accept Author and Creator from others
# Author @rafatieppo <rafaeltieppo (a) yahoo com br
# Since: 20220-08-09
# Version: 1
# License: MIT License
# Requisites: shell, egrep, sed
# Tags: garmin, polar, tcx, shell, linux, regex
# ------------------------------------------------------------

# step 01 - list all TCX or tcx files
# find ./ | egrep  ".*\.(tcx|TCX)" > list_tcx_files
lsfiles=$(find . | egrep  ".*\.(tcx|TCX)")
lstcx=($lsfiles)

for tcxfile in "${lstcx[@]}"; do
    # remove tag Author
    echo "------------------------------------------------------------"
    echo "working on: " $tcxfile
    cls_auth=$(sed -e 's/<Auth.*\/Author>//' <<< echo $tcxfile);
    noauthor=$(echo $cls_auth);
    # remove tag Creator
    cls_authcreat=$(echo $noauthor | sed -e 's/<Creat.*\/Creator>//');
    # write file
    begifile=$(sed -E 's/.TCX|.tcx//' <<< $tcxfile)
    endsfile="_done.tcx"
    echo $cls_authcreat >  "$begifile$endsfile";
    echo "$begifile$endsfile" "has been writed"
    echo "------------------------------------------------------------"
    done
