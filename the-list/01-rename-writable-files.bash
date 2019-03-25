#!/bin/bash

_cat=$1

if [[ -z $_cat ]]; then
	echo "Nie określono katalogu."
	exit 1
fi

#for file in $_cat/*.old; do
#	rm -f $file
#done
rm -f $_cat/*.old

for file in $_cat/*; do
	if [ -w $file ]; then
		mv $file $file.old
	fi
done
