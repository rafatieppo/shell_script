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

coun=1
while [ $coun -le 10 ]; do
  regex="fid_${coun}_|fid_${coun}.g"
  echo -e '\n------------------------------------------------------------'
  # echo $regex
  #lsfiles=$(find . | grep -E  "(fid_1_|fid_1.g)")
  lsfiles=$(find . | grep -E  $regex)
  zip "fid_${coun}.zip" $lsfiles
  # ls=($lsfiles)
  # for file in "${ls[@]}"; do
  #   echo $file;
  # done
  coun=$(( $coun+1 ))
done

# if [ -z "${lsshp}"]; then
#     echo -e "---> Shape file was not found.\n"
# else
#     for shpfile in "${lsshp[@]}"; do
#         # list all files for ONE shape
#         echo "working on shapefile geometry $shpfile"
#         echo "------------------------------------------------------------"
#         # removing "./" from path file
#         fn=$(sed -E "s/\.\///" <<< $shpfile);
#         # removing ".shp" from path file
#         fn_noext=$(echo $fn | sed -e 's/.shp//');
#         # list all files for geometry
#         lsfiles_shp=$(ls ${fn_noext}.*);
#         echo "$lsfiles_shp"
#         ls ${fn_noext}.* | zip -@ "${fn_noext}.zip"
#         echo "${fn_noext}.zip" "has been writed"
#         echo "------------------------------------------------------------"
#     done
# echo "Its Done."
# fi

