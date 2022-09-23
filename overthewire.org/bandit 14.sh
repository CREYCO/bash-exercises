Bandit Level 14 → Level 15
Level Goal

The password for the next level can be retrieved by submitting the password of the current level to port 30000 on localhost.
Commands you may need to solve this level

ssh, telnet, nc, openssl, s_client, nmap

PRUEBA DE PUERTOS ABIERTOS

bandit14@bandit:~$ echo '' > /dev/tcp/127.0.0.1/30000
bandit14@bandit:~$ echo $?
0
bandit14@bandit:~$ echo '' > /dev/tcp/127.0.0.1/30002
bandit14@bandit:~$ echo $?
0
bandit14@bandit:~$ echo '' > /dev/tcp/127.0.0.1/30123
-bash: connect: Connection refused
-bash: /dev/tcp/127.0.0.1/30123: Connection refused

bash modo consola
bash -c "echo '' > /dev/tcp/127.0.0.1/30" 2>/dev/null && echo "[*] Puerto abierto" || echo "[*] Puerto cerrado"
[*] Puerto cerrado
bash -c "echo '' > /dev/tcp/127.0.0.1/30000" 2>/dev/null && echo "[*] Puerto abierto" || echo "[*] Puerto cerrado"
[*] Puerto abierto

PASAR ESTA CONTRASEÑA
cat /etc/bandit_pass/bandit14
4wcYUJFw0k0XLShlDzztnTBHiqxU3b3e

echo "4wcYUJFw0k0XLShlDzztnTBHiqxU3b3e" | nc localhost 30000	# nc netcat  is  a  simple  unix utility which reads and writes data across network connections, using TCP or UDP 
Correct!
BfMYroe26WYalil77FoDi9qh59eK5xNr

Usando TELNET
telnet localhost 30000
4wcYUJFw0k0XLShlDzztnTBHiqxU3b3e






