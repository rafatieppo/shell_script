#!/bin/bash
# for Debian (Ubuntu Mate Xfce) - extras stuff
# new version 2022-02-13, by @rafatieppo

echo -------------------------------------------------------------------
echo Install ImageMagick ? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    apt install imagemagick
fi

echo ------------------------------------------------------------
echo ends here.
