Bandit Level 28 → Level 29
Level Goal

There is a git repository at ssh://bandit28-git@localhost/home/bandit28-git/repo. The password for the user bandit28-git is the same as for the user bandit28.

Clone the repository and find the password for the next level.
Commands you may need to solve this level

git


ssh -p 2220  bandit28@bandit.labs.overthewire.org 
0ef186ac70e04ea33b4c1853d2526fa2

bandit28@bandit:~$ mktemp -d
/tmp/tmp.LrWYr0wyVK
bandit28@bandit:~$ cd /tmp/tmp.LrWYr0wyVK
bandit28@bandit:/tmp/tmp.LrWYr0wyVK$ git clone ssh://bandit28-git@localhost/home/bandit28-git/repo
Cloning into 'repo'...

bandit28@bandit:/tmp/tmp.LrWYr0wyVK$ cd repo
andit28@bandit:/tmp/tmp.LrWYr0wyVK/repo$ cat README.md 
# Bandit Notes
Some notes for level29 of bandit.

## credentials

- username: bandit29
- password: xxxxxxxxxx

bandit28@bandit:/tmp/tmp.LrWYr0wyVK/repo$ git log -p	# muestra el historico de cambios

- username: bandit29
-- password: bbc96594b4e001778eee9975372716b2		# clave de acceso para sig. nivel
+- password: xxxxxxxxxx


