#!/bin/bash
# for Debian (Ubuntu Mate Xfce) - extras stuff
# new version 2022-02-13, by @rafatieppo

echo -------------------------------------------------------------------
echo Install TMUX ? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    apt-get -y install tmux
fi

echo -------------------------------------------------------------------
echo Install CUPS ? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    apt-get -y install cups
fi

echo -------------------------------------------------------------------
echo Install printer driver all ? [ 1/0 ]
# https://wiki.debian.org/SystemPrinting
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    apt install printer-driver-all
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

echo ------------------------------------------------------------
echo ends here.
