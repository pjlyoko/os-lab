#!/bin/bash

_cat=$1
if [ -z $_cat ]; then
	echo "Nie określono katalogu."
	exit 1
fi

rm -r $_cat/*

mkdir $_cat/podfolder1 $_cat/podfolder2 $_cat/podfolder2/podfolder2-1
# a*a
touch $_cat/podfolder1/agjgjgja $_cat/podfolder2/ajhjhjhjha $_cat/podfolder1/abnbnbna
# k*k
touch $_cat/podfolder2/knnnnnk $_cat/podfolder2/podfolder2-1/kiiiiiik
# z*z, z*a, a*b - nie powinny być wskazywane
touch $_cat/podfolder2/podfolder2-1/zzzzz $_cat/podfolder1/zaaaaaa $_cat/podfolder2/aaaaaaab
