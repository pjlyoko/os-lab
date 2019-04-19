#!/bin/bash

_cat=$1
if [[ -z $_cat ]]; then
	echo "Nie określono katalogu."
	exit 1
fi

find $_cat ! -type d -print | awk '{ n=split($0, pola, "/"); if(pola[n] == pola[n-1]) { print $0 } }'
