#!/bin/bash
# Install library for python3 by means pip3. Development by @rafatieppo .
# version 09-18-2019, by @rafatieppo

echo -------------------------------------------------------------------
echo Install autopep8? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    pip3 install autopep8
fi

