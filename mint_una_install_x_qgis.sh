#!/bin/bash
# for Linux Mint 20.3 VERSION_CODENAME=una UBUNTU_CODENAME=focal 
# Install QGIS
# new version 2022-07-12, by @rafatieppo

echo -------------------------------------------------------------------
echo Write QGIS repository in /etc/apt/sources.list.d/qgislts_repo.list for Debian Bullseye? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
echo -e "deb https://qgis.org/ubuntu-ltr focal main \ndeb-src https://qgis.org/ubuntu-ltr focal main" > /etc/apt/sources.list.d/qgislts_repo.list 
fi

echo -------------------------------------------------------------------
echo Get gpg key for GIS-LTR from https://qgis.org/downloads/qgis-2021.gpg.key? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    wget -qO - https://qgis.org/downloads/qgis-2021.gpg.key | gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/qgis-archive.gpg --import
    chmod a+r /etc/apt/trusted.gpg.d/qgis-archive.gpg
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
    apt-get install qgis python-qgis qgis-plugin-grass saga
fi
