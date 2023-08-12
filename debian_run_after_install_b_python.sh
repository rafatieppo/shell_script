#!/bin/bash
# for Debian (Ubuntu Mate Xfce) - python stuff
# new version 2022-02-13, by @rafatieppo

echo -------------------------------------------------------------------
echo Install python3.11-dev ? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    apt-get install python3.11-dev
fi

#echo -------------------------------------------------------------------
#echo Install python-setuptools ? [ 1/0 ]
#echo -------------------------------------------------------------------
#read opcao
#if [ $opcao -eq 1 ] ; then
#    apt-get install python-setuptools
#fi

#echo -------------------------------------------------------------------
#echo Install python3-pip ? [ 1/0 ]
#echo -------------------------------------------------------------------
#read opcao
#if [ $opcao -eq 1 ] ; then
#    apt-get -y install python3-pip
#fi

echo -------------------------------------------------------------------
echo Install python3-tk ? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    apt-get install python3-tk
fi

echo -------------------------------------------------------------------
echo Install python3.11-venv ? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    apt-get install python3.11-venv
fi

#echo -------------------------------------------------------------------
#echo Install python3-jedi black autopep8 yapf3 ? [ 1/0 ]
#echo -------------------------------------------------------------------
#read opcao
#if [ $opcao -eq 1 ] ; then
#    apt install python3-jedi black python3-autopep8 yapf3 python3-yapf
#fi

#echo -------------------------------------------------------------------
#echo Install python-autopep8 ? [ 1/0 ]
#echo -------------------------------------------------------------------
#read opcao
#if [ $opcao -eq 1 ] ; then
#    apt-get install python-autopep8
#fi

#echo -------------------------------------------------------------------
#echo Install elpa-elpy ? [ 1/0 ]
#echo -------------------------------------------------------------------
#read opcao
#if [ $opcao -eq 1 ] ; then
#    apt install elpa-elpy
#fi

echo ------------------------------------------------------------
echo ends here.
