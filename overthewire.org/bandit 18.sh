
Bandit Level 18 → Level 19
Level Goal

The password for the next level is stored in a file readme in the homedirectory. Unfortunately, someone has modified .bashrc to log you out when you log in with SSH.
Commands you may need to solve this level

ssh, ls, cat

ssh -p 2220  bandit18@bandit.labs.overthewire.org
kfBf3eYk5BPBRzwjqutbbfE887SVc5Yd

Byebye !
Connection to bandit.labs.overthewire.org closed.	# no me deja avanzar xq .bashrc  tiene algo q me expulsa asi q hay q evitarlo


ssh -p 2220  bandit18@bandit.labs.overthewire.org "bash --norc"	# se usa --norc para q no lo lea al entrar, y bash para q lo ejecute

# tiene un dialogo diferente, hay q entrar el comando directamente
whoami
bandit18
pwd
/home/bandit18
cat /etc/bandit_pass/bandit18
kfBf3eYk5BPBRzwjqutbbfE887SVc5Yd

cat readme
IueksS7Ubh8G3DCwVzrTd8rAVOwq3M5x	# contraseña de bandit19

