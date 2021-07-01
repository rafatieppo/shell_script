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
echo Install biber ? [ 1/0 ]
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
echo Install GIMP ? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
sudo apt-get install gimp
fi

echo -------------------------------------------------------------------
echo Install Pandoc ? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    apt-get install pandoc
fi

echo -------------------------------------------------------------------
echo Install Pandoc-citeproc ? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    apt-get install pandoc-citeproc
fi

echo -------------------------------------------------------------------
echo Install python-dev ? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    apt-get install python-dev
fi

echo -------------------------------------------------------------------
echo Install python-setuptools ? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    apt-get install python-setuptools
fi

echo -------------------------------------------------------------------
echo Install python3-pip ? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    apt-get -y install python3-pip
fi

echo -------------------------------------------------------------------
echo Install python3-tk ? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    apt-get install python3-tk
fi

echo -------------------------------------------------------------------
echo Install python3-env ? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    apt-get install python3-venv
fi

echo -------------------------------------------------------------------
echo Install elpa-elpy ? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    apt install elpa-elpy
fi

echo -------------------------------------------------------------------
echo Install python3 jedi black yapf ? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    apt install python3-jedi black yapf
fi

echo -------------------------------------------------------------------
echo Install python-autopep8 ? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    apt-get install python-autopep8
fi

echo -------------------------------------------------------------------
echo Install jupyter by pip3 ? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    pip3 install jupyter
fi

echo -------------------------------------------------------------------
echo Install jupyter-lab by pip3 ? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    pip3 install jupyterlab
fi

echo -------------------------------------------------------------------
echo Install rar ? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    apt-get install rar
fi

echo -------------------------------------------------------------------
echo Install themes and icons ? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    apt-get install arch-theme numix-icon-theme adwaita-icon-theme mate-tweak
fi



