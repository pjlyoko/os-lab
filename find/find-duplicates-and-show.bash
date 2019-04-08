#!/bin/bash

# -------------------------------------------------------------- #
# WARNING! WARNING! WARNING! WARNING! WARNING! WARNING! WARNING! #
# -------------------------------------------------------------- #
# This script does not obey a rule of using `find` just once.    #
# These usages may be joined – but then it'll be harder to show  #
# number of occurences.                                          #
# -------------------------------------------------------------- #

_cat=$1
if [[ -z $_cat ]]; then
	echo "Nie określono katalogu."
	exit 1
fi

find $_cat -type f -printf '%f\n' | sort | uniq --count | while read count filename; do
	#[ $count -eq 1 ] && continue
	if [ $count -gt 1 ]; then
		echo "Plik $filename występuje $count razy:"
		find $_cat -type f -name $filename -printf '\t%p\n'
	fi
done
