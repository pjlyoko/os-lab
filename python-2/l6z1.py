#!/usr/bin/python3

import os   # os.path.join, os.stat, os.walk
import stat # stat.S_ISREG
import sys  # sys.argv

def walkatree(path = None):
	if path is None:
		raise ValueError("Nie zdefiniowano katalogu.")
	
	for root, _, files in os.walk(path, topdown=False):
		for file in files:
			if file == root.split("/")[-1]:
				pathname = os.path.join(root, file)
				mode = os.stat(pathname).st_mode
				if stat.S_ISREG(mode):
					print(pathname)


if __name__ == '__main__':
	if len(sys.argv) != 2:
		raise ValueError("Nie podano argumentu wywołania.")
	walkatree(sys.argv[1])

