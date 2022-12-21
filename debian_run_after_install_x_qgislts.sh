#!/bin/bash
# for Debian - Install QGIS
# new version 2022-12-21, by @rafatieppo

echo -------------------------------------------------------------------
echo Write QGIS repository in /etc/apt/sources.list.d/qgislts_repo.list for Debian Bullseye? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
echo -e "# qgis \nTypes: deb deb-src \nURIs: https://qgis.org/debian \nSuites: bullseye \nArchitectures: amd64 \nComponents: main \nSigned-By: /etc/apt/keyrings/qgis-archive-keyring.gpg" > /etc/apt/sources.list.d/qgis.sources 
fi

echo -------------------------------------------------------------------
echo Get gpg key for GIS from https://download.qgis.org/downloads/qgis-archive-keyring.gpg? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    if [ ! -d "$/etc/apt/keyrings"]; then
        pathvar='/etc/apt/keyrings'
        mkdir -p "$pathvar"
    fi
    wget https://download.qgis.org/downloads/qgis-archive-keyring.gpg
    mv qgis-archive-keyring.gpg /etc/apt/keyrings/qgis-archive-keyring.gpg
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
fi

