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

# step 01 - list all folder

lsfiles=$(find ./ -type d | grep -E './[A-Z].*')
lsdirs=($lsfiles)
echo $lsdirs

if [ -z "${lsdirs}" ]; then
    echo -e "---> Shape file was not found.\n"
else
    for ddirs in "${lsdirs[@]}"; do
        # list all files for ONE shape
        echo "------------------------------------------------------------"        
        echo "working on folder geometry $ddirs"
        fn=$(sed -E "s/\.\///" <<< $ddirs);
        # list all files for geometry for student
        lsdirs_content=$(ls ${ddirs});
        echo "$lsdirs_content"
        zip -r "${fn}.zip" $ddirs 
        echo "------------------------------------------------------------"
    done;
fi
