#!/usr/bin/python3

import os, stat, sys

def walktree(top):
	"""Przechodzi ~rekursywnie~ po katalogu `top`, 
	wywołuje sprawdzanie plików regularnych, 
	zwraca ilość znalezionych plików spełniających warunki zadania."""
	counter = 0
	for f in os.listdir(top):
		pathname = os.path.join(top, f)
		mode = os.stat(pathname).st_mode
		#if stat.S_ISDIR(mode):
			#counter += walktree(pathname)
		#elif stat.S_ISREG(mode):
		if stat.S_ISREG(mode):
			if checkFile(pathname, mode):
				counter += 1
	return counter

def checkFile(file, mode):
	"""Sprawdza, czy plik spełnia warunki zadania."""
	global debug
	if not bool(mode & stat.S_IXUSR) and bool(mode & (stat.S_IXGRP | stat.S_IXOTH)):
		if(debug):
			print("	D:", file, "- tryb", stat.filemode(mode))
		return True
	return False


if len(sys.argv) not in (2, 3):
	print("Niepoprawna liczba argumentów.")
	exit(255)

try:
	debug = True if sys.argv[2] == "1" else False
except IndexError:
	debug = False

print("Znalezione pliki:", walktree(sys.argv[1]))
