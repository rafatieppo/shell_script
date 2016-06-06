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
echo Install portuguese dictionaries? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    apt-get install myspell-pt-br 
    apt-get install aspell-br
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
echo Install R [ 1/0 ]?
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
    apt-get install -y texlive-base texlive-bibtex-extra \
	texlive-fonts-extra texlive-fonts-recommended \
	texlive-generic-extra texlive-latex-extra texlive-math-extra \
	texlive-plain-extra texlive-science latex-xcolor latex-beamer \
	texlive-lang-portuguese \
	cm-super cm-super-minimal cm-super-x11 auctex
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
echo Install GNU Cash ? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    sudo apt-get install gnucash
fi

echo -------------------------------------------------------------------
echo Install Libreoffice ? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    sudo add-apt-repository ppa:libreoffice/ppa
    sudo apt-get update
    sudo apt-get install libreoffice
fi

echo -------------------------------------------------------------------
echo Install spotfy ? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    sudo apt-add-repository -y "deb http://repository.spotify.com stable non-free" &&
    sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 94558F59 &&
    sudo apt-get update -qq &&
    sudo apt-get install spotify-client
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