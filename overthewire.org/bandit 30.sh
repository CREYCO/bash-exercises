Bandit Level 30 → Level 31
Level Goal

There is a git repository at ssh://bandit30-git@localhost/home/bandit30-git/repo. The password for the user bandit30-git is the same as for the user bandit30.

Clone the repository and find the password for the next level.
Commands you may need to solve this level

git

ssh -p 2220  bandit30@bandit.labs.overthewire.org
5b90576bedb2cc04c86a9e924ce42faf

bandit30@bandit:~$ mktemp -d
/tmp/tmp.FnI0YWYyfU
bandit30@bandit:~$ cd /tmp/tmp.FnI0YWYyfU
bandit30@bandit:/tmp/tmp.FnI0YWYyfU$ git clone ssh://bandit30-git@localhost/home/bandit30-git/repo
Cloning into 'repo'...

bandit30@bandit:/tmp/tmp.FnI0YWYyfU/repo$ cat README.md 
just an epmty file... muahaha

bandit30@bandit:/tmp/tmp.FnI0YWYyfU/repo$ git log -p
commit 3aefa229469b7ba1cc08203e5d8fa299354c496b
Author: Ben Dover <noone@overthewire.org>
Date:   Thu May 7 20:14:54 2020 +0200

    initial commit of README.md

diff --git a/README.md b/README.md
new file mode 100644
index 0000000..029ba42
--- /dev/null
+++ b/README.md
@@ -0,0 +1 @@
+just an epmty file... muahaha


APARENTEMENTE NO HAY NADA

BUSCAMOS TAG
bandit30@bandit:/tmp/tmp.FnI0YWYyfU/repo$ git tag
secret

bandit30@bandit:/tmp/tmp.FnI0YWYyfU/repo$ git show secret
47e603bb428404d265f59c42920d81e5


