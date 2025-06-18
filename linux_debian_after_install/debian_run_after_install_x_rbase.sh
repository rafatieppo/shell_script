#!/bin/bash
# for Debian - install R-base
# new version 2022-02-13, by @rafatieppo

echo -------------------------------------------------------------------
echo Write R cran-40 repository in /etc/apt/sources.list.d/rbase_repo.list  for Debian bullseye? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
echo "deb http://cloud.r-project.org/bin/linux/debian bullseye-cran40/" > /etc/apt/sources.list.d/rbase_repo.list 
fi

echo -------------------------------------------------------------------
echo Get key fingerprint 95C0FAF38DB3CCAD0C080A7BDC78B2DDEABC47B7 for R repository? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    apt-key adv --keyserver keyserver.ubuntu.com --recv-key '95C0FAF38DB3CCAD0C080A7BDC78B2DDEABC47B7'
fi

echo -------------------------------------------------------------------
echo Would like to update repositories? [ 1/0 ]
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


