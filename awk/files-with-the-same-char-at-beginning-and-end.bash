#!/bin/bash

_cat=$1
if [[ -z $_cat ]]; then
	echo "Nie określono katalogu."
	exit 1
fi

# Poniższe powinno działać (i zajęło lwią część czasu laboratorium na debugowanie),
# ale wygląda na to, że awk nie wspiera odwołań wstecznych (tutaj `\1`).
# find $_cat -type f -printf "%f\n" | awk 'BEGIN { counter=0 }; /^(.).*\1$/m { counter+=1; print $0 }; END{ print counter }'
find $_cat -type f -printf "%f\n" | awk 'BEGIN { counter=0 }; { n=split($0, litery, ""); if(litery[1] == litery[n]) { counter += 1; print $0 } }; END{ print counter }'
