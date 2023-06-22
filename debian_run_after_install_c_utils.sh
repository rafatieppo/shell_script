#!/bin/bash
# for Debian mate (Ubuntu Mate) - extras stuff
# new version 2022-02-13, by @rafatieppo

echo -------------------------------------------------------------------
echo Install caja-dropbox caja-openterminal? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    apt-get -y install caja-dropbox caja-open-terminal
fi

echo -------------------------------------------------------------------
echo Install CURL? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    apt-get -y install curl
fi

echo -------------------------------------------------------------------
echo Install TMUX ? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    apt-get -y install tmux
fi

echo -------------------------------------------------------------------
echo Install SYSTEM-CONFIG-PRINTER? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    apt install system-config-printer
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
