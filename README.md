# SO2
This repository is used to publish the code I made for _Operating systems 2_ classes.

Each catalog is another set of tasks (2, usually) I had to prepare.

## May 15, 2019
Working on catalogue trees with Python. [Read more [PL]](python-2)
- [python-2/l6z1.py](python-2/l6z1.py) – in a given catalogue tree find (show path) all regular files named as the catalogue they're in.
- [python-2/l6z2.py](python-2/l6z2.py) – **NOT FINISHED** copy a catalogue tree in a way that regular files were copied as regular files, symlinks inside the tree were symlinks to files inside a new tree, and symlinks to files outside the tree were linking to the same file (eg. _do not break symlinks_).

## Apr 24, 2019
Working on filesystem with Python. [Read more [PL]](python-1)
- [python-1/l5z1.py](python-1/l5z1.py) – in a given catalogue count files which owner has **no rights** to execute but group or others have.
- [python-1/l5z2.py](python-1/l5z2.py) – in a given catalogue find symlinkd to regular files in that catalogue.

## Apr 16, 2019
Stream processing with `awk`. [Read more [PL]](awk)
- [files-with-the-same-char-at-beginning-and-end](awk/files-with-the-same-char-at-beginning-and-end.bash) ([data-preparation](awk/data-for-files-with-the-same-char-at-beginning-and-end.bash)) — in a given catalogue find regular files which name begins and ends with the same character.
- [files-names-as-catalogue-theyre-in](awk/files-names-as-catalogue-theyre-in.bash) ([data-preparation](awk/data-for-files-names-as-catalogue-theyre-in.bash)) — in a given catalogue find regular files which name is the same as the name of a catalogue they're in.

## Apr 3, 2019
Working with `find`. [Read more [PL]](find)
- [regular-files-with-hardlinks-and-specific-privileges](find/regular-files-with-hardlinks-and-specific-privileges.bash) ([data-preparation](find/data-for-regular-files-with-hardlinks-and-specific-privileges)) — in a given catalogue find regular files having hard links, and owner of which has **no rights** to read, and anyone (regardless whether a group or the others) has rights to write.
- [find-duplicates-and-show](find/find-duplicates-and-show) ([data-preparation](find/data-for-find-duplicates-and-show)) — in a given catalogue find regular files with the same name; if a name occurs just once, skip it.

## Mar 20, 2019
Working with symbolic and hard links. [Read more [PL]](links)
- [hard-to-symbolic](links/01-hard-to-symbolic.bash) — in a given folder change all the hard links linking to files in the same folder to symbolic links (minding the same files).
- [copy-files-minding-links](links/02-copy-files-minding-links.bash) — copy files from one folder to another (script parameter) in a way that symbolic links from the first catalog are still correct in the second catalog.

## Mar 6, 2019
First laboratory, tasks from [the list](http://www.zsk.ict.pwr.wroc.pl/zsk/repository/dydaktyka/so/so_lab1.pdf).
- [remove-and-log-empty-files](the-list/09-remove-and-log-empty-files.bash) (task 9) — remove all empty (zero-sized) files from a given folder (script parameter). In a given file create a list of deleted files. Do not follow symbolic links.
- [rename-writable-files](the-list/01-rename-writable-files.bash) (task 1) — rename all files in a given folder (script parameter) that are allowed to be written, adding `.old` at the end of their name. Before that, delete all files which name ends with `.old`.
