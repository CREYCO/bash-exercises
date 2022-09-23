Bandit Level 29 → Level 30
Level Goal

There is a git repository at ssh://bandit29-git@localhost/home/bandit29-git/repo. The password for the user bandit29-git is the same as for the user bandit29.

Clone the repository and find the password for the next level.
Commands you may need to solve this level

git


ssh -p 2220  bandit29@bandit.labs.overthewire.org
password: bbc96594b4e001778eee9975372716b2

bandit29@bandit:~$ mktemp -d
/tmp/tmp.Kp7YbX11PO
bandit29@bandit:~$ cd /tmp/tmp.Kp7YbX11PO
bandit29@bandit:/tmp/tmp.Kp7YbX11PO$ git clone ssh://bandit29-git@localhost/home/bandit29-git/repo
Cloning into 'repo'...

bandit29@bandit:/tmp/tmp.Kp7YbX11PO/repo$ git log -p		# NO encontramos cambios
commit 208f463b5b3992906eabf23c562eda3277fea912
Author: Ben Dover <noone@overthewire.org>
Date:   Thu May 7 20:14:51 2020 +0200

    fix username

diff --git a/README.md b/README.md
index 2da2f39..1af21d3 100644
--- a/README.md
+++ b/README.md
@@ -3,6 +3,6 @@ Some notes for bandit30 of bandit.
 
 ## credentials
 
-- username: bandit29
+- username: bandit30
 - password: <no passwords in production!>
 


bandit29@bandit:/tmp/tmp.Kp7YbX11PO/repo$ git branch -r		# buscamos las distintas ramas para observar cambios
  origin/HEAD -> origin/master
  origin/dev
  origin/master
  origin/sploits-dev
bandit29@bandit:/tmp/tmp.Kp7YbX11PO/repo$ git log -p

git log -p
commit bc833286fca18a3948aec989f7025e23ffc16c07
Author: Morla Porla <morla@overthewire.org>
Date:   Thu May 7 20:14:52 2020 +0200

    add data needed for development

diff --git a/README.md b/README.md
index 1af21d3..39b87a8 100644
--- a/README.md
+++ b/README.md
@@ -4,5 +4,5 @@ Some notes for bandit30 of bandit.
 ## credentials
 
 - username: bandit30
-- password: <no passwords in production!>
+- password: 5b90576bedb2cc04c86a9e924ce42faf		# aqui esta la clave al sig. nivel


