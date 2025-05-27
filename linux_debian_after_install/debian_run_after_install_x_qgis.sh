#!/bin/bash
# ------------------------------------------------------------
# Goal: install QGIS NO LTS on DEBIAN
# Author @rafatieppo <rafaeltieppo (a) yahoo com br>
# Since: 2023-04-03
# Version: 1
# License: MIT License
# Requisites: curl, bash, shell
# Tags: shell, linux, debian, qgis
# ------------------------------------------------------------

# ------------------------------------------------------------
# Edit HERE the vars as you wish (follow https://qgis.org/en/site/forusers/alldownloads.html)
vtype="Types: deb deb-src"
vuris="URIs: https://qgis.org/debian"
vsuites="Suites: bullseye"
varchi="Architectures: amd64"
vcompon="Components: main"
vsigned="Signed-By: /etc/apt/keyrings/qgis-archive-keyring.gpg"
# ------------------------------------------------------------

# ------------------------------------------------------------
# script starts here
pathvar="/etc/apt/"

echo -------------------------------------------------------------------
echo It will install QGIS NO LTR - super user is required
echo -------------------------------------------------------------------

echo -------------------------------------------------------------------
echo ATTENTION: Type 1 for Yes, type 0 for No
echo -------------------------------------------------------------------
echo -------------------------------------------------------------------
echo Is the following content correct to add in repository: /etc/apt/sources.list.d/qgis.sources?
echo -------------------------------------------------------------------
echo 
echo $vtype 
echo $vuris
echo $vsuites
echo $varchi
echo $vcompon
echo $vsigned
echo 

echo Type [ 1/0 ]
read opcao
if [ $opcao -eq 1 ] ; then
    echo "Writing ... "
    echo -e ${vtype}"\n"${vuris}"\n"${vsuites}"\n"${varchi}"\n"${vcompon}"\n"${vsigned} > "/etc/apt/sources.list.d/qgis.sources"
    echo -e "/etc/apt/sources.list.d/qgis.sources has been writed \n"
else
    echo -e "Script aborted, please edit the script as you wish \n"
    exit
fi

echo -------------------------------------------------------------------
echo Download gpg key for GIS and print? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    curl https://download.qgis.org/downloads/qgis-archive-keyring.gpg --output ./qgis-archive-keyring.gpg
    gpg --no-default-keyring --keyring ./qgis-archive-keyring.gpg --list-keys
fi

echo -------------------------------------------------------------------
echo Is the output the same on https://qgis.org/en/site/forusers/alldownloads.html ? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    echo -e "Next step \n"
else
    echo -e "Script aborted \n"
    exit
fi

echo -------------------------------------------------------------------
echo Would you like to move the key to /etc/apt/keyrings? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    if [ -d "${pathvar}keyrings/" ]; then
        echo  "dir ${pathvar}keyrings/ does exists, moving ..."
        mv "./qgis-archive-keyring.gpg" "${pathvar}keyrings/qgis-archive-keyring.gpg"
        echo -e "file has been moved\n"
    else
        echo "dir ${pathvar}keyrings/ does NOT exists, creating ..."
        mkdir -p "${pathvar}keyrings/"
        mv "./qgis-archive-keyring.gpg" "${pathvar}keyrings/qgis-archive-keyring.gpg"
        echo -e "file has been moved\n"
    fi
fi
echo -------------------------------------------------------------------
echo Would like to update repositories? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    apt-get update
fi

echo -------------------------------------------------------------------
echo Would like to install QGIS GRASS SAGA? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    apt install qgis python-qgis qgis-plugin-grass saga
    apt-get install grass-gui
    apt-get install grass-dev
    echo -e "Script finished, check if the installation was successful"
else
    echo -e "Script finished"
fi

# ------------------------------------------------------------
# script ends here
