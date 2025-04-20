# gitutil

Tools to form git repos and/or GitHub repos


## TL;DR

To install:

```sh
make install
```


## clonelocalgit

```
/usr/local/bin/clonelocalgit [-h] [-v] [-V] [-n] [-r repotree] repo_name parent_dir

	-h            print this message and exit
	-v            be verbose
	-V	          print version string and exit

	-n            do not create anything

	-r repotree   tree on hostname containing reponame.git (def: /usr/local/git)

	repo_name     name of the git repo under repotree (without the .git)
	parent_dir    clone the git repo under parent_dir/repo_name

clonelocalgit version: 1.0.0 2025-03-17
```


## clonermtgit

```sh
/usr/local/bin/clonermtgit [-h] [-v] [-V] [-n] [-r repotree] repo_host repo_name parent_dir

	-h            print this message and exit
	-v            be verbose
	-V            print version string and exit

	-n            do not create anything

	-r repotree   tree on hostname containing reponame.git (def: /usr/local/git)

	repo_host    hostname containing the tree of git repos
	repo_name    name of the git repo under repotree (without the .git)
	parent_dir   clone the git repo under parent_dir/repo_name

clonermtgit version: 1.0.0 2025-03-17
```


## ghreplace

```sh
/usr/local/bin/ghreplace [-h] [-v] [-V] [-n] [-g gittree] [-s srctop] [-u user] dirname

    -h		print help and exit
    -v		be verbose
    -V          print version string and exit

    -n		do not change anything

    -s srctop	path to top of source above name (def: /usr/local/src/bin)
    -g gittree	path to local git tree (def: /usr/local/git)
    -u user	GitHub username (def: lcn2)
		    default GitHub Repo base: git@github.com:lcn2
		    default GitHub Repo URL: https://github.com/lcn2

    name	directory under /usr/local/src/bin to process

Exit codes:
    0	all is OK
    1	operation failed
    2	print help and exit
    3	command line error
 >=10	internal error

ghreplace version: 1.0.0 2025-03-17
```


## git2gh

```sh
/usr/local/bin/git2gh [-h] [-v] [-V] [-n] [-g gittree] [-s srctop] [-u user] dirname

    -h		print help and exit
    -v		be verbose
    -V      print version string and exit

    -n		do not change anything

    -s srctop	path to top of source above name (def: /usr/local/src/bin)
    -g gittree	path to local git tree (def: /usr/local/git)
    -u user	GitHub username (def: lcn2)
		    default GitHub Repo base: git@github.com:lcn2
		    default GitHub Repo URL: https://github.com/lcn2

    name	directory under /usr/local/src/bin to process

Exit codes:
    0	all is OK
    1	operation invalid
    2	print help and exit
    3	command line error
 >=10	internal error

git2gh version: 1.0.0 2025-03-17
```


## mkgitrepo

```sh
/usr/local/bin/mkgitrepo [-h] [-v] [-V] [-n] [-r locrepo] dir

    -h          print this message and exit
    -v          be verbose
    -V          print version string and exit

    -n          do not create anything

    -r locrepo  directory of the local git repo (def: /usr/local/git)

    dir	    directory that bare repo under /usr/local/git is cloned from

mkgitrepo version: 1.0.0 2025-03-17
```


## rcs2git

```sh
/usr/local/bin/rcs2git [-h] [-v] [-V] [-n] [-a] [-b] [-r locrepo] [-c] [-m commit] [-x tool] [-k] dir

    -h          print this message and exit
    -v          be verbose
    -V          print version string and exit

    -n          do not create anything

    -a          do not commit (def: add all and commit)
    -b          do not add, do not commit (def: add all and commit)
    -r locrepo  directory of the local git repo (def: /usr/local/git)
    -c          do not clone to locrepo (def: bare clone to locrepo)
    -m commit   use commit message when committing (def: 'from RCS to git via rcs-fast-export')
    -x tool     path to the rcs-fast-export tool (def: /usr/local/bin/rcs-fast-export)
    -k          keep RCS directory (def: remove RCS after sucessful git conversion)

    dir         directory to place under git control

rcs2git version: 1.0.0 2025-03-17
``


## syncgit

```sh
/usr/local/bin/syncgit [-h] [-n] [-v] dir

    -h          print this message and exit
    -v          be verbose
    -V          print version string and exit

    -n          do not create anything

    dir         sync content of dir with the git repo

syncgit version: 1.0.0 2025-03-17
```


## undergit

```sh
/usr/local/bin/undergit

    -h          print this message and exit
    -v          be verbose
    -V          print version string and exit

    -n          do not create anything

    -a          do not commit (def: add all and commit)
    -b          do not add, do not commit (def: add all and commit)
    -r locrepo  directory of the local git repo (def: /usr/local/git)
    -c          do not clone to locrepo (def: bare clone to locrepo)
    -m commit   use commit message when committing (def: 'under git control')

    dir         directory to place under git control

undergit version: 1.0.0 2025-03-17
```


# Reporting Security Issues

To report a security issue, please visit "[Reporting Security Issues](https://github.com/lcn2/gitutil/security/policy)".
