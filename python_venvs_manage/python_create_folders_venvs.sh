#!/bin/bash
# ------------------------------------------------------------
# Goal: create folders for python virtual enviroments
# Author @rafatieppo <rafaeltieppo (a) yahoo com br
# Since: 2023-08-09
# Version: 1
# License: MIT License
# Requisites: shell
# Tags: python, venv, virtual, enviroment
# ------------------------------------------------------------

echo -e "\n"
echo -------------------------------------------------------------------
echo Type 1 for Yes and 0 for No
echo -------------------------------------------------------------------
echo -e "\n"
echo -------------------------------------------------------------------
echo First of all, Are you in desired Folder \(e.g. /home/rafat/\)? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    echo Creating folders.
    echo -e "\n"
else
    echo Script aborted
    exit
fi;

# Declare a string array with type
declare -a StringArray=(".virtualenvs/venv_basic" ".virtualenvs/venv_geo" ".virtualenvs/venv_jupyter" ".virtualenvs/venv_ml" ".virtualenvs/venv_sebal" ".virtualenvs/venv_selenium")

# Read the array values with space
for dir in "${StringArray[@]}"; do
    echo -e "\n"
    echo Checking $dir
    if [ ! -d $dir ]
        then
            mkdir -p $dir
            echo Creating $dir
    else
        echo "Directory exists"
    fi
done


#mkdir -p .virtualenvs/venv_basic
#mkdir -p .virtualenvs/venv_geo
#mkdir -p .virtualenvs/venv_jupyter
#mkdir -p .virtualenvs/venv_ml
#mkdir -p .virtualenvs/venv_sebal
#mkdir -p .virtualenvs/venv_selenium

echo -ne '#####                     (33%)\r'
sleep 0.5
echo -ne '#############             (66%)\r'
sleep 0.5
echo -ne '#######################   (100%)\r'
echo -ne '\n'



