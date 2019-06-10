#!/usr/bin/python3

import shutil # shutil.copy2
import os     # os.path.join, os.stat, os.walk
import stat   # stat.S_ISREG
import sys    # sys.argv

def copytree(base = None, to = None):
	if base is None or to is None:
		raise ValueError("Nie zdefiniowano co najmniej jednego katalogu.")
	
	if(not os.path.exists(to)):
		os.mkdir(to)
	
	#shutil.copytree(base, to, symlinks=True)
	for root, _, files in os.walk(base):
		for file in files:
			filepath = os.path.join(root, file)
			newpath = os.path.join(to, filepath.split(base + "/")[-1])
			if os.path.islink(filepath):
				print("LINK:", filepath, "->", newpath)
			else:
				print(filepath, "->", newpath)
			#shutils.copy2(filepath, newpath
			#filemode = os.stat(filepath).st_mode
			#if os.path.islink(filepath):
				#print("LINK: ", filepath)
			#else:
				#newpath = os.path.join(to, filepath.split(base + "/")[-1])
				#print(filepath, "->", newpath)
				#shutil.copy2(filepath, newpath)
			#if file == root.split("/")[-1]:
				#pathname = os.path.join(root, file)
				#mode = os.stat(pathname).st_mode
				#if stat.S_ISREG(mode):
					#print(pathname)


if __name__ == '__main__':
	if len(sys.argv) != 3:
		raise ValueError("Nie podano argumentu wywołania.")
	copytree(sys.argv[1], sys.argv[2])

