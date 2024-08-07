#!/bin/bash
# ------------------------------------------------------------
# Goal: zip file from find command
# useful
# Author @rafatieppo <rafaeltieppo (a) yahoo com br>
# Since: 2023-08-09
# Version: 1
# License: MIT License
# Requisites: shell, egrep, sed
# Tags: shell, linux, regex, zip, shape
# ------------------------------------------------------------

# step 01 - list all shp files
lsfiles=$(find . | egrep  ".*\.shp")
lsshp=($lsfiles)

if [ -z "${lsshp}"]; then
    echo -e "---> Shape file was not found.\n"
else
    for shpfile in "${lsshp[@]}"; do
        # list all files for ONE shape
        echo "working on shapefile geometry $shpfile"
        echo "------------------------------------------------------------"
        # removing "./" from path file
        fn=$(sed -E "s/\.\///" <<< $shpfile);
        # removing ".shp" from path file
        fn_noext=$(echo $fn | sed -e 's/.shp//');
        # list all files for geometry
        lsfiles_shp=$(ls ${fn_noext}.*);
        echo "$lsfiles_shp"
        # -@  read names from stdin
        ls ${fn_noext}.* | zip -@ "${fn_noext}.zip"
        echo "${fn_noext}.zip" "has been writed"
        echo "------------------------------------------------------------"
    done
echo "Its Done."
fi

