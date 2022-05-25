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

