#!/bin/bash

_cat=$1
if [ -z $_cat ]; then
	echo "Nie określono katalogu."
	exit 1
fi

rm -r $_cat/* 

mkdir $_cat/podfolder
touch $_cat/plik1 $_cat/plik2 $_cat/plik3 $_cat/podfolder/plik4 $_cat/podfolder/plik5 $_cat/plik6

chmod u-r,o+w $_cat/plik2
chmod u-r,g+w,g+x $_cat/plik3
chmod u-r,o+w $_cat/podfolder/plik4
chmod u-r,o+w,g+w,o+x $_cat/podfolder/plik5
chmod u-x,o+x,g+x $_cat/plik6
