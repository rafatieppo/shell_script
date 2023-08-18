#!/bin/bash
# ------------------------------------------------------------
# Goal: zip file from find command
# useful
# Author @rafatieppo <rafaeltieppo (a) yahoo com br
# Since: 2023-08-09
# Version: 1
# License: MIT License
# Requisites: shell, egrep, sed
# Tags: shell, linux, regex, zip
# ------------------------------------------------------------

# step 01 - list all TCX or tcx files
# find ./ | egrep  ".*\.(tcx|TCX)" > list_tcx_files
lsfiles=$(find . | egrep  ".*\.shp")
lsshp=($lsfiles)

for shpfile in "${lsshp[@]}"; do
    # list all files for ONE shape
    echo "working on shapefile geometry $shpfile"
    echo "------------------------------------------------------------"
    # echo "file name without extension"
    # removing "./"
    fn=$(sed -E "s/\.\///" <<< $shpfile);
    # removing .shp
    fn_noext=$(echo $fn | sed -e 's/.shp//');
    # list all files for geometry
    lsfiles_shp=$(ls ${fn_noext}.*);
    echo "$lsfiles_shp"
    ls ${fn_noext}.* | zip -@ "${fn_noext}.zip"
    echo "${fn_noext}.zip" "has been writed"
    #echo "" $fn_noext
    echo "------------------------------------------------------------"
    done
               

echo "Its Done."
