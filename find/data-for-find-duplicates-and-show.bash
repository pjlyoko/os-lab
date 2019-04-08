#!/bin/bash

_cat=$1
if [ -z $_cat ]; then
	echo "Nie określono katalogu."
	exit 1
fi

rm -r $_cat/*
for num in {1..8}; do
	touch $_cat/plik$num
done
mkdir $_cat/podkatalog
for num in {1..4}; do
	touch $_cat/podkatalog/plik$num
done
