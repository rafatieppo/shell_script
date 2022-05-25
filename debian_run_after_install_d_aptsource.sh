#!/bin/bash
# for Debian (Ubuntu Mate Xfce) - source list
# new version 2022-02-13, by @rafatieppo

echo -------------------------------------------------------------------
echo Write R repository in /etc/apt/sources.list.d/rbase_repo.list  for Debian? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
echo "deb http://cloud.r-project.org/bin/linux/debian bullseye-cran40/" > /etc/apt/sources.list.d/rbase_repo.list 
fi



echo -------------------------------------------------------------------
echo Write QGIS repository in /etc/apt/sources.list.d/qgislts_repo.list  for Debian? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
echo  "deb https://qgis.org/debian-ltr bullseye main \ndeb-src https://qgis.org/debian-ltr bullseye main" > /etc/apt/sources.list.d/qgislts_repo.list 
fi

echo -------------------------------------------------------------------
echo Would like to install update repositories? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    apt-get update
fi

echo -------------------------------------------------------------------
echo Would like to install r-base? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    apt-get install r-base r-base-dev
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

