#!/bin/bash
# for Debian (Ubuntu Mate Xfce) - keys
# new version 2022-02-13, by @rafatieppo

echo -------------------------------------------------------------------
echo Install  key fingerprint 95C0FAF38DB3CCAD0C080A7BDC78B2DDEABC47B7 for R repository? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    apt-key adv --keyserver keyserver.ubuntu.com --recv-key '95C0FAF38DB3CCAD0C080A7BDC78B2DDEABC47B7'
fi

echo -------------------------------------------------------------------
echo Write QGIS repository in /etc/apt/sources.list.d/qgislts_repo.list  for Debian? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    wget -qO - https://qgis.org/downloads/qgis-2021.gpg.key | gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/qgis-archive.gpg --import
    chmod a+r /etc/apt/trusted.gpg.d/qgis-archive.gpg
fi
