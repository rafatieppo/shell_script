#!/bin/bash
# for Ubuntu
# new version 2025-05-27, by @rafatieppo

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
    texlive-extra-utils \
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
	ttf-liberation fonts-linuxlibertine \
	texlive-fonts-extra 
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
echo Install rar ? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    apt-get install rar
fi

echo -------------------------------------------------------------------
echo Install vlc \(codecs videos\) ? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    apt-get install vlc
fi

echo -------------------------------------------------------------------
echo Install  gnome-tweaks? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    apt-get install gnome-tweaks
fi

echo ------------------------------------------------------------
echo ends here.
