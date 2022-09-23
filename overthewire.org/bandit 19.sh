
Bandit Level 19 → Level 20
Level Goal

To gain access to the next level, you should use the setuid binary in the homedirectory. Execute it without arguments to find out how to use it. The password for this level can be found in the usual place (/etc/bandit_pass), after you have used the setuid binary.
Helpful Reading Material

    setuid on Wikipedia

ssh -p 2220  bandit19@bandit.labs.overthewire.org 
IueksS7Ubh8G3DCwVzrTd8rAVOwq3M5x

ls -l
-rwsr-x--- 1 bandit20 bandit19 7296 May  7  2020 bandit20-do
los permisos indican q puedo usar el binario como propietario "bandit20" en forma temporal

bandit19@bandit:~$ ./bandit20-do bash -p
bash-4.4$ 

bash-4.4$ cat /etc/bandit_pass/bandit20
GbKksEFF4yrVs6il55v6gwY5aVje5f0j


