# SO2
This repository is used to publish the code I made for _Operating systems 2_ classes.

Each catalog is another set of tasks (2, usually) I had to prepare.

## Apr 3, 2019
Working with `find`.
- [regular-files-with-hardlinks-and-specific-privileges](find/regular-files-with-hardlinks-and-specific-privileges.bash) ([data-preparation](find/data-for-regular-files-with-hardlinks-and-specific-privileges)) — in a given catalogue find regular files having hard links, and owner of which has **no rights** to read, and anyone (regardless whether a group or the others) has rights to write.
- [find-duplicates-and-show](find/find-duplicates-and-show) ([data-preparation](find/data-for-find-duplicates-and-show)) — in a given catalogue find regular files with the same name; if a name occurs just once, skip it.

## Mar 20, 2019
Working with symbolic and hard links.
- [hard-to-symbolic](links/01-hard-to-symbolic.bash) — in a given folder change all the hard links linking to files in the same folder to symbolic links (minding the same files).
- [copy-files-minding-links](links/02-copy-files-minding-links.bash) — copy files from one folder to another (script parameter) in a way that symbolic links from the first catalog are still correct in the second catalog.

## Mar 6, 2019
First laboratory, tasks from [the list](http://www.zsk.ict.pwr.wroc.pl/zsk/repository/dydaktyka/so/so_lab1.pdf).
- [remove-and-log-empty-files](the-list/09-remove-and-log-empty-files.bash) (task 9) — remove all empty (zero-sized) files from a given folder (script parameter). In a given file create a list of deleted files. Do not follow symbolic links.
- [rename-writable-files](the-list/01-rename-writable-files.bash) (task 1) — rename all files in a given folder (script parameter) that are allowed to be written, adding `.old` at the end of their name. Before that, delete all files which name ends with `.old`.
