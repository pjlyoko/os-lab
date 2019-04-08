#!/bin/bash

_cat=$1
_cat2=$2
if [ -z $_cat -o -z $_cat2 ]; then
	echo "Nie określono katalogu."
	exit 1
fi

rm -r $_cat/* $_cat2/*

mkdir $_cat/podfolder
touch $_cat/plik1 $_cat/plik2 $_cat/plik3 $_cat/podfolder/plik4 $_cat/podfolder/plik5 

ln $_cat/plik1 $_cat2/dow_plik1
ln $_cat/plik2 $_cat2/dow_plik2
ln $_cat/podfolder/plik5 $_cat2/dow_plik5

chmod u-r,o+w $_cat/plik2
chmod u-r,g+w $_cat/plik3
chmod u-r,o+w $_cat/podfolder/plik4
chmod u-r,o+w,g+w $_cat/podfolder/plik5
