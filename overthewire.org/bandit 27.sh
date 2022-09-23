Bandit Level 27 → Level 28
Level Goal

There is a git repository at ssh://bandit27-git@localhost/home/bandit27-git/repo. The password for the user bandit27-git is the same as for the user bandit27.

Clone the repository and find the password for the next level.
Commands you may need to solve this level

bandit27@bandit:~$ mktemp -d
/tmp/tmp.tCZfMTpKyI
bandit27@bandit:~$ cd /tmp/tmp.tCZfMTpKyI

git clone ssh://bandit27-git@localhost/home/bandit27-git/repo

bandit27@bandit:/tmp/tmp.tCZfMTpKyI/repo$ cat README 
The password to the next level is: 0ef186ac70e04ea33b4c1853d2526fa2	# clave para el sig. nivel

