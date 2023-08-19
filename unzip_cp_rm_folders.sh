#!/bin/bash
# ------------------------------------------------------------
# Goal: unzip folders from zip files
# Data from CAR 2023 have a folder (AREA_IMOVEL) into a zipped files, its necessary extract the shapes into this folder
# Author @rafatieppo <rafaeltieppo (a) yahoo com br
# Since: 2023-08-09
# Version: 1
# License: MIT License
# Requisites: shell, egrep, sed
# Tags: shell, linux, regex, zip, shape
# ------------------------------------------------------------

# lsfiles=$(find . | egrep  ".*\.shp")
# lsshp=($lsfiles)

# ---- edit HERE ------------------------------------------------------------
# step 01 - set path to the file with a list of cities names 
file_cities="/home/rafatieppo/Documents/proj_2208_efeito_agro_munic_mt/mt_cities_folder_uppercase.txt"

# step 02 - set path to the folder - each cities must have a folder
path_files="/home/rafatieppo/Documents/proj_2208_efeito_agro_munic_mt/dados_car_merge_2023/"
# --- edit ENDS here --------------------------------------------------------

# step 03 create folder for each citie - unzip citie.zip in specific folder
while read -r citie; do
    # -> create dir
    mkdir -p "${path_files}${citie}"
    # -> unzip citie.zip into each folder
    z="${path_files}${citie}.zip"
    echo -e '\n------------------------------------------------------------'
    echo $z
    echo -e '------------------------------------------------------------'
    unzip "${z}" -d "${path_files}${citie}"
    # -> get the shape_\[0-9\] folder path for each city
    pathshapefoldercity=$(find ${path_files}${citie} -maxdepth 1 -type d | egrep '.*SHAPE.*')
    echo "\n"
    echo "${pathshapefoldercity}"
    # -> copy AREA_IMOVEL.zip from shape_\[0-9\] folder to the root of each city
    cp "${pathshapefoldercity}/AREA_IMOVEL.zip" -t "${path_files}${citie}"
    # -> unzip AREA_IMOVEL.zip in root of each citie
    unzip "${path_files}${citie}/AREA_IMOVEL.zip" -d "${path_files}${citie}"
    # -> remove AREA_IMOVEL.zip from root
    rm "${path_files}${citie}/AREA_IMOVEL.zip"
    # -> remove shape_\[0-9\] folder in each city root folder
    rm -r "${pathshapefoldercity}"
done < $file_cities


