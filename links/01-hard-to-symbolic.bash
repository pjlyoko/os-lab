#!/bin/bash

_cat=$1
if [[ -z $_cat ]]; then
	echo "Nie określono katalogu."
	exit 1
fi

rm -r $_cat/*

# Preparing "the test data"
echo "Plik właściwy 1." > $_cat/wlasciwy1
echo "Plik właściwy 2." > $_cat/wlasciwy2
echo "Plik właściwy 3." > $_cat/wlasciwy3
ln wlasciwy1 $_cat/dowiazanie_do1_1
ln wlasciwy1 $_cat/dowiazanie_do1_2
ln wlasciwy1 $_cat/dowiazanie_do1_3
ln wlasciwy2 $_cat/dowiazanie_do2_1
ln wlasciwy2 $_cat/dowiazanie_do2_2
ln wlasciwy3 $_cat/dowiazanie_do3_1

ls -i $_cat | sort -k 1 | while read inode file; do
	if [ ! -f $_cat/$file ]; then
		continue
	fi;
	ls -i $_cat | sort -k 1 | while read working_inode working_file; do
		if [ $inode = $working_inode -a $file != $working_file -a `ls -l $_cat/$working_file | cut -d ' ' -f 2` -gt 1 ]; then
			ln -sf $_cat/$file $_cat/$working_file
		fi
	done
done

ls -l $_cat
