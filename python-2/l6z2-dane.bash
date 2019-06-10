#!/bin/bash

_cat=$1
if [ -z $_cat ]; then
	echo "Nie określono katalogu."
	exit 1
fi

rm -r $_cat/*

mkdir $_cat/podfolder1 $_cat/podfolder2 $_cat/podfolder3
# x in x
touch $_cat/podfolder1/podfolder1 $_cat/podfolder2/podfolder2 $_cat/podfolder3/podfolder3
# y, z in x
touch $_cat/podfolder1/podfolder2 $_cat/podfolder1/podfolder3 $_cat/podfolder2/podfolder1 $_cat/podfolder2/podfolder3 $_cat/podfolder3/podfolder1 $_cat/podfolder3/podfolder2
ln -s ../podfolder1/podfolder1 $_cat/podfolder2/ln1
ln -s ../../l6z2-dane.bash $_cat/podfolder1/ln2
ln -s /etc/issue.net $_cat/podfolder3/issue.net
