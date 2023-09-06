#!/bin/bash
# for Debian mate (Ubuntu Mate) - extras stuff
# new version 2022-02-13, by @rafatieppo



echo -------------------------------------------------------------------
echo Install software-properties-gtk (to instal non-free prop - nvidia)? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    apt install software-properties-gtk
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

echo -------------------------------------------------------------------
echo Install Simple-scan? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    apt install simple-scan
fi

echo -------------------------------------------------------------------
echo Install bluetooth drivers jbl? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    apt-get install bluetooth bluez bluez-tools rfkill
fi

echo ------------------------------------------------------------
echo ends here.
