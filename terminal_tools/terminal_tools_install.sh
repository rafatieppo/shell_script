#!/bin/bash
# ------------------------------------------------------------
# Goal: install and config terminals tools
# 1. install zsh
# 2. copy Alacratty and Zsh config files for Linux (Debian)
# It is necessary because Garmin Connect does not accept Author and Creator from others
# Author @rafatieppo <rafaeltieppo (a) yahoo com br
# Since: 20220-08-09
# Version: 1
# License: MIT License
# Requisites: shell, egrep, sed
# Tags: garmin, polar, tcx, shell, linux, regex
# ------------------------------------------------------------

echo -------------------------------------------------------------------
echo Copy Alacratty config file \$HOME/.config/alacritty/alacritty.toml [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
  mkdir -p $HOME/.config/alacritty
  cp ./alacritty/alacritty.toml $HOME/.config/alacritty/alacritty.toml
fi

echo -------------------------------------------------------------------
echo Copy tmux config file \$HOME ? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
  cp ./tmux/dot_tmux.conf $HOME/.tmux.conf
fi

echo -------------------------------------------------------------------
echo Install zsh and zplug? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
  apt install zsh
  apt install zplug  
fi

echo -------------------------------------------------------------------
echo Copy zsh config file to $HOME ? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
  cp ./zsh_ohmy/dot_zshrc $HOME/.zshrc
fi

echo ------------------------------------------------------------
echo ends here.
echo Run zsh, install plugins and restart
