#!/bin/bash
# for Ubuntu - python stuff
# new version 2025, by @rafatieppo


echo -------------------------------------------------------------------
echo ATTENTION - python version in this script is 3.12
echo -------------------------------------------------------------------

echo -------------------------------------------------------------------
echo Install python3.12-dev ? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    apt-get install python3.12-dev
fi

echo -------------------------------------------------------------------
echo Install python3-tk ? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    apt-get install python3-tk
fi

echo -------------------------------------------------------------------
echo Install python3.12-venv ? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    apt-get install python3.12-venv
fi

echo ------------------------------------------------------------
echo ends here.
