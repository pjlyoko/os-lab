#!/bin/bash

_cat1=$1
_cat2=$2
if [ -z $_cat1 -o -z $_cat2 ]; then
	echo "Nie określono jednego z katalogów."
	exit 1
fi

rm $_cat1/*
rm $_cat2/*

# Preparing "the test data"
echo "Plik właściwy 1." > $_cat1/wlasciwy1
echo "Plik właściwy 2." > $_cat1/wlasciwy2
echo "Plik właściwy 3." > $_cat1/wlasciwy3
ln -s wlasciwy1 $_cat1/dowiazanie_do1_1
ln -s wlasciwy1 $_cat1/dowiazanie_do1_2
ln -s wlasciwy1 $_cat1/dowiazanie_do1_3
ln $_cat1/wlasciwy2 $_cat1/dowiazanie_do2_1
ln $_cat1/wlasciwy2 $_cat1/dowiazanie_do2_2
ln -s wlasciwy3 $_cat1/dowiazanie_do3_1

for file1 in $_cat1/*; do
	if [ -L $file1 ]; then
		ln -s `readlink -f $file1` $_cat2/`basename $file1`
	else
		if [ -f $file1 ]; then
			cp $file1 $_cat2/`basename $file1`
		else
			echo "A co to za rzecz?" $file1
		fi
	fi
done
