#!/usr/bin/python3

import os, stat, sys

def walktree(top):
	"""Przechodzi po katalogu `top`, 
	wywołuje sprawdzanie plików dowiązań, 
	zwraca ilość znalezionych plików spełniających warunki zadania."""
	counter = 0
	for f in os.listdir(top):
		pathname = os.path.join(top, f)
		if os.path.islink(pathname):
			if checkFile(pathname):
				counter += 1
	return counter

def checkFile(file):
	"""Sprawdza, czy plik spełnia warunki zadania."""
	global debug
	realpath = os.path.realpath(file)
	
	(cat1, _) = os.path.split(file)
	(cat2, _) = os.path.split(realpath)
	cat1 = cat1.split("/")[-1]
	cat2 = cat2.split("/")[-1]
	if cat1 == cat2:
		if(debug):
			print("	D:", file, "-", realpath)
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
