#!/bin/bash

_cat=$1
_plik=$2

if [[ -z $_cat ]]; then
	echo "Nie określono katalogu."
	exit 1
fi

if [[ -z $_plik ]]; then
	echo "Nie określono pliku wyjścia."
	exit 2
fi

if [ -s $_plik ]; then
	rm $_plik
fi
touch $_plik

for file in $_cat/*; do
	if [ ! -s $file -a ! -L $file ]; then
		echo $file >> $_plik
		rm $file
	fi
done
