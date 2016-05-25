# ONLY Get and Pandoc filters
# You must install PANDOC before and SETUPTOOL as weel
# sudo apt-get install python-setuptools
# Developed by @rafatieppo

echo -------------------------------------------------------------------
echo Get and Install pandoc-FIGnos ? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    git clone https://github.com/tomduck/pandoc-fignos.git ~/Downloads/PANDOC_FIGNOS
#    python ~/Downloads/PANDOC_FIGNOS/setup.py install ERROR
fi

echo -------------------------------------------------------------------
echo Get and Install pandoc-EQnos ? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    git clone https://github.com/tomduck/pandoc-eqnos.git ~/Downloads/PANDOC_EQNOS
#    python ~/Downloads/PANDOC_EQNOS/setup.py install # ERROR
fi

echo -------------------------------------------------------------------
echo Get and Install pandoc-TBLnos ? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    git clone https://github.com/tomduck/pandoc-tablenos.git ~/Downloads/PANDOC_TBLNOS
#    python ~/Downloads/PANDOC_TBLNOS/setup.py install # ERROR
fi
