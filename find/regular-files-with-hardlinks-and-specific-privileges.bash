#!/bin/bash

_cat=$1
if [[ -z $_cat ]]; then
	echo "Nie określono katalogu."
	exit 1
fi

#find z1-dane1 -type f -and -links +1 -and ! -perm -u+r -and -perm /g+w,o+w -print
find z1-dane1 -type f -and -links +1 -and ! -perm -400 -and -perm /022 -print
