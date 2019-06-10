#!/bin/bash

_cat=$1
if [ -z $_cat ]; then
	echo "Nie określono katalogu."
	exit 1
fi

rm -r $_cat/* 

touch $_cat/plik1 $_cat/plik2 $_cat/plik3 $_cat/plik4 $_cat/plik5 $_cat/plik6

ln -s plik1 $_cat/dow_plik1
ln -s plik2 $_cat/dow_plik2
ln -s ../l5z2-dane.bash $_cat/dow_l5z2-dane


