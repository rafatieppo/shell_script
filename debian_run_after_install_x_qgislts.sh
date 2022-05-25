#!/bin/bash
# for Debian - Install QGIS
# new version 2022-02-13, by @rafatieppo

echo -------------------------------------------------------------------
echo Write QGIS repository in /etc/apt/sources.list.d/qgislts_repo.list  for Debian? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
echo -e "deb https://qgis.org/debian-ltr bullseye main \ndeb-src https://qgis.org/debian-ltr bullseye main" > /etc/apt/sources.list.d/qgislts_repo.list 
fi

echo -------------------------------------------------------------------
echo Write QGIS-LTR repository in /etc/apt/sources.list.d/qgislts_repo.list  for Debian? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    wget -qO - https://qgis.org/downloads/qgis-2021.gpg.key | gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/qgis-archive.gpg --import
    chmod a+r /etc/apt/trusted.gpg.d/qgis-archive.gpg
fi

echo -------------------------------------------------------------------
echo Would like to install QGIS GRASS etc? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    apt-get install qgis python-qgis qgis-plugin-grass saga
    sudo apt-get install grass-gui
    sudo apt-get install grass-dev
fi
