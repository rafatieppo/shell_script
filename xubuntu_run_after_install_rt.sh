#!/bin/bash
# for Xubuntu (Ubuntu Xfce). Development by @fernandomayer.
# new version 05-25-2016, by @rafatieppo

echo -------------------------------------------------------------------
echo Install Drivers, midia, codecs? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    apt-get install ubuntu-restricted-extras libavcodec-extra
fi

echo -------------------------------------------------------------------
echo Install X11 toolkit etc? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    apt-get install build-essential texinfo libx11-dev libxpm-dev
    libjpeg-dev libpng-dev libgif-dev libtiff-dev libgtk2.0-dev
    libncurses-dev libxpm-dev automake autoconf
fi

echo -------------------------------------------------------------------
echo Install portuguese dictionaries? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    apt-get install myspell-pt-br 
    apt-get install aspell-br
    apt-get install aspell-pt-br
fi

#echo -------------------------------------------------------------------
#echo Install protected DVD reader? [ 1/0 ]
#echo -------------------------------------------------------------------
#read opcao
#if [ $opcao -eq 1 ] ; then
#    apt-get install libdvdread4
#    /usr/share/doc/libdvdread4/install-css.sh
#fi

echo -------------------------------------------------------------------
echo It is for Ubuntu 16: Install R [ 1/0 ]? 
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
#Add following entry
    add-apt-repository 'deb http://cran.rstudio.com/bin/linux/ubuntu trusty/' 
#Add the Public Keys
    gpg --keyserver keyserver.ubuntu.com --recv-key E084DAB9 &&
    gpg -a --export E084DAB9 | sudo apt-key add - &&
    apt-get update &&
    apt-get upgrade &&
    apt-get install r-base
fi

echo -------------------------------------------------------------------
echo It is for Ubuntu 18: Install R [ 1/0 ]?
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
#Add following entry
     sudo apt-get install r-base
fi

echo -------------------------------------------------------------------
echo Install rgdal [ 1/0 ]?
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    apt-get install libgdal1-dev libproj-dev
fi

echo -------------------------------------------------------------------
echo Install Emacs 24? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    # add-apt-repository -y ppa:cassou/emacs
    # apt-get update
    apt-get install -y emacs24 emacs24-el emacs24-common-non-dfsg \
	emacs-goodies-el
fi

echo -------------------------------------------------------------------
echo Install ess [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    sudo apt-get install ess
fi

echo -------------------------------------------------------------------
echo Install LaTeX? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    apt-get install -y texlive-latex-extra
fi

echo -------------------------------------------------------------------
echo Install LaTeX science and publishers? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    apt-get install texlive-science \
    texlive-publishers \
    texlive-lang-portuguese \
	cm-super cm-super-minimal cm-super-x11 auctex
fi

echo -------------------------------------------------------------------
echo Install mores extra fonts ? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    apt-get install biber
fi

echo -------------------------------------------------------------------
echo Install extra fonts? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    apt-get install -y ttf-bitstream-vera ttf-dejavu fonts-inconsolata \
	ttf-liberation fonts-linuxlibertine 
fi

echo -------------------------------------------------------------------
echo Install mores extra fonts ? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
#    apt-get install --reinstall ttf-mscorefonts-installer &&
    apt-get install ttf-mscorefonts-installer
fi

echo -------------------------------------------------------------------
echo Install python-dev ? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
## To suport pandoc-fignos setup
    apt-get install python-dev
fi

echo -------------------------------------------------------------------
echo Install font manager ? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    apt-get install font-manager
fi

echo -------------------------------------------------------------------
echo Install Gparted? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    sudo apt-get install gparted
fi

echo -------------------------------------------------------------------
echo Install Unetbootin? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    sudo apt-get install unetbootin
fi

echo -------------------------------------------------------------------
echo Install QGIS with GRASS ? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
sudo add-apt-repository ppa:ubuntugis/ubuntugis-unstable
sudo apt-get update
sudo apt-get install qgis python-qgis qgis-plugin-grass
fi

echo -------------------------------------------------------------------
echo Install GIMP ? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
sudo apt-get install gimp
fi

echo -------------------------------------------------------------------
echo Install inkscape ? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
sudo apt-get install inkscape
fi
