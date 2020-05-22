#!/bin/bash
# for Debian (Ubuntu Xfce).
# new version 09-18-2019, by @rafatieppo

echo -------------------------------------------------------------------
echo Install portuguese dictionaries? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    apt-get install myspell-pt-br 
    apt-get install aspell-br
    apt-get install aspell-pt-br
fi

echo -------------------------------------------------------------------
echo Install R [ 1/0 ]?
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
#Add following entry
     apt-get install r-base
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
echo Install Gimp ? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
#    apt-get install --reinstall ttf-mscorefonts-installer &&
    apt-get install gimp
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
echo Install font manager ? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    apt-get install font-manager
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

echo -------------------------------------------------------------------
echo Install ADAPTA themes and icons 659 MB in disk ? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    apt-get install adapta-gtk-theme
fi

echo -------------------------------------------------------------------
echo Install QGIS ? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    apt-get install qgis
fi

echo -------------------------------------------------------------------
echo Install GRASS ? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    apt-get install grass
fi

echo -------------------------------------------------------------------
echo Install GRASS-GUI ? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    apt-get install grass-gui
fi

echo -------------------------------------------------------------------
echo Install GRASS-DEV ? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    apt-get install grass-dev
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







