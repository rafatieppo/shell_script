#!/bin/bash
# for Ubuntu - extras stuff
# new version 2025, by @rafatieppo

echo -------------------------------------------------------------------
echo Install CURL? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    apt-get -y install curl
fi

echo -------------------------------------------------------------------
echo Install Alacritty ? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    apt-get -y install alacritty
fi

echo -------------------------------------------------------------------
echo Install TMUX ? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    apt-get -y install tmux
fi

echo -------------------------------------------------------------------
echo Install MICRO text editor ? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    apt-get -y install micro
fi

echo -------------------------------------------------------------------
echo Install ImageMagick ? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    apt install imagemagick
fi

echo -------------------------------------------------------------------
echo Install Cheese WebCam? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    apt install cheese
fi

echo -------------------------------------------------------------------
echo Install Audaciy? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    apt install audacity
fi

echo -------------------------------------------------------------------
echo Install Simple-scan? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    apt install simple-scan
fi

echo -------------------------------------------------------------------
echo Install ncal terminal calendar? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    apt install ncal
fi

echo ------------------------------------------------------------
echo ends here.
